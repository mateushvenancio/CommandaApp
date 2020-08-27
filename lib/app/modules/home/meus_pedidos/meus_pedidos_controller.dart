import 'package:mobx/mobx.dart';

part 'meus_pedidos_controller.g.dart';

class MeusPedidosController = _MeusPedidosControllerBase
    with _$MeusPedidosController;

abstract class _MeusPedidosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
