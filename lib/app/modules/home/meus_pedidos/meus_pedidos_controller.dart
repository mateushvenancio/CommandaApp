import 'package:commandaapp/stores/auth_store.dart';
import 'package:commandaapp/stores/empresa_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'meus_pedidos_controller.g.dart';

class MeusPedidosController = _MeusPedidosControllerBase
    with _$MeusPedidosController;

abstract class _MeusPedidosControllerBase with Store {
  final empresaStore = Modular.get<EmpresaStore>();
  final authStore = Modular.get<AuthStore>();

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
