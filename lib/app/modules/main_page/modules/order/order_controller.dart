import 'package:commandaapp/app/repositories/firebase_repository.dart';
import 'package:commandaapp/model/menu_item.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'order_controller.g.dart';

class OrderController = _OrderControllerBase with _$OrderController;

abstract class _OrderControllerBase with Store {
  final repository = Modular.get<FirebaseRepository>();

  @observable
  ObservableStream<List<MenuItem>> orders;

  @action
  getOrders() {
    orders = repository.getAllMenuItems();
  }
}
