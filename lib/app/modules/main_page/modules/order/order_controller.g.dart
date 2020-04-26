// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OrderController on _OrderControllerBase, Store {
  final _$ordersAtom = Atom(name: '_OrderControllerBase.orders');

  @override
  ObservableStream<List<MenuItem>> get orders {
    _$ordersAtom.context.enforceReadPolicy(_$ordersAtom);
    _$ordersAtom.reportObserved();
    return super.orders;
  }

  @override
  set orders(ObservableStream<List<MenuItem>> value) {
    _$ordersAtom.context.conditionallyRunInAction(() {
      super.orders = value;
      _$ordersAtom.reportChanged();
    }, _$ordersAtom, name: '${_$ordersAtom.name}_set');
  }

  final _$_OrderControllerBaseActionController =
      ActionController(name: '_OrderControllerBase');

  @override
  dynamic getOrders() {
    final _$actionInfo = _$_OrderControllerBaseActionController.startAction();
    try {
      return super.getOrders();
    } finally {
      _$_OrderControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'orders: ${orders.toString()}';
    return '{$string}';
  }
}
