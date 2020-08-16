import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commandaapp/model/usuario.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
part 'user_store.g.dart';

class UserStore = _UserStoreBase with _$UserStore;

abstract class _UserStoreBase with Store {
  init() async {}

  @observable
  FirebaseUser user;

  @observable
  Usuario usuario;

  @action
  getUser() async {}

  @action
  getUsuario() async {
    var _dSn = await Firestore.instance
        .collection('usuarios')
        .document(user.uid)
        .get();
    usuario = Usuario.fromJson(_dSn.data, _dSn.documentID);
  }
}
