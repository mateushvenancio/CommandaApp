import 'package:commandaapp/model/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'checkout_item_controller.dart';

class CheckoutItemPage extends StatefulWidget {
  final MenuItem model;

  CheckoutItemPage(this.model);

  @override
  _CheckoutItemPageState createState() => _CheckoutItemPageState();
}

class _CheckoutItemPageState
    extends ModularState<CheckoutItemPage, CheckoutItemController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adicionar item')),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
