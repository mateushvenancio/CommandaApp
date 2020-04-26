import 'package:commandaapp/shared/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'order_controller.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends ModularState<OrderPage, OrderController> {
  @override
  void initState() {
    controller.getOrders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        print('chegou aqui');
        print('${controller.orders}');
        return ListView.builder(
          itemBuilder: (context, index) {
            return MenuItemTile(controller.orders.data[index]);
          },
        );
      },
    );
  }
}
