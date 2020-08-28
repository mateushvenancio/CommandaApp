import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commandaapp/model/empresa.dart';
import 'package:commandaapp/model/menu_item.dart';
import 'package:commandaapp/models/comanda.dart';
import 'package:commandaapp/stores/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'empresa_store.g.dart';

class EmpresaStore = _EmpresaStoreBase with _$EmpresaStore;

abstract class _EmpresaStoreBase with Store {
  final authStore = Modular.get<AuthStore>();

  @observable
  Empresa empresa;
  @observable
  List<MenuItem> produtos = [];
  @observable
  Comanda comanda;

  @action
  getComanda(String lugar) async {
    Comanda _comanda = Comanda();

    var _qSn = await FirebaseFirestore.instance
        .collection('empresa')
        .doc(empresa.id)
        .collection('comandas')
        .where('lugar', isEqualTo: lugar)
        .get();

    if (_qSn.docs != null && _qSn.docs.length != 0 && _qSn.docs.first.exists) {
      _comanda = Comanda.fromJson(_qSn.docs.first.data());
      if (!_comanda.usuarios.any((element) {
        return element.id == authStore.usuario.id;
      })) {
        _comanda.usuarios.add(authStore.usuario);
      }
    } else {
      _comanda = Comanda(
        horaInicio: DateTime.now(),
        idEmpresa: empresa.id,
        lugar: lugar,
        pedidos: [],
        usuarios: [],
      );

      if (!_comanda.usuarios.any((element) {
        return element.id == authStore.usuario.id;
      })) {
        _comanda.usuarios.add(authStore.usuario);
      }

      var _docRed = await FirebaseFirestore.instance
          .collection('empresa')
          .doc(empresa.id)
          .collection('comandas')
          .add(_comanda.toJson());
      _comanda.id = _docRed.id;
    }

    await FirebaseFirestore.instance
        .collection('empresa')
        .doc(empresa.id)
        .collection('comandas')
        .doc(_comanda.id)
        .set(_comanda.toJson());

    comanda = _comanda;
  }

  @action
  getEmpresa(String id) async {
    List<MenuItem> _produtos = [];
    var _q =
        await FirebaseFirestore.instance.collection('empresa').doc(id).get();
    empresa = Empresa.fromJson(_q.data(), _q.id);
    var _p = await FirebaseFirestore.instance
        .collection('empresa')
        .doc('$id')
        .collection('produtos')
        .get();

    _p.docs.forEach((element) {
      _produtos.add(MenuItem.fromJson(element.data, element.id));
    });

    produtos = _produtos;
  }
}
