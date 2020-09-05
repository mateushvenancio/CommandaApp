import 'package:commandaapp/models/menu_item.dart';
import 'package:commandaapp/models/pedido.dart';
import 'package:commandaapp/stores/auth_store.dart';
import 'package:commandaapp/stores/empresa_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'checkout_item_controller.g.dart';

class CheckoutItemController = _CheckoutItemControllerBase
    with _$CheckoutItemController;

abstract class _CheckoutItemControllerBase with Store {
  final empresaStore = Modular.get<EmpresaStore>();
  final authStore = Modular.get<AuthStore>();

  @observable
  bool isLoading = false;

  @action
  fazerNovoPedido(MenuItem item, int quantidade) async {
    isLoading = true;
    Pedido pedido = Pedido(
      item: item,
      quantidade: quantidade,
      horaPedido: DateTime.now(),
      usuario: authStore.usuario,
    );

    empresaStore.addPedido(pedido);
    await Future.delayed(Duration(seconds: 1));

    isLoading = false;
  }
}
