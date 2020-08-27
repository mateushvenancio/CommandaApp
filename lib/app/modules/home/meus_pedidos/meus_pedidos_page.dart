import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'meus_pedidos_controller.dart';

class MeusPedidosPage extends StatefulWidget {
  final String title;
  const MeusPedidosPage({Key key, this.title = "MeusPedidos"})
      : super(key: key);

  @override
  _MeusPedidosPageState createState() => _MeusPedidosPageState();
}

class _MeusPedidosPageState
    extends ModularState<MeusPedidosPage, MeusPedidosController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
