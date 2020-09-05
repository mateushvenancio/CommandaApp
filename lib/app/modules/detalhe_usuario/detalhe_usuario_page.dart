import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'detalhe_usuario_controller.dart';

class DetalheUsuarioPage extends StatefulWidget {
  final String title;
  const DetalheUsuarioPage({Key key, this.title = "DetalheUsuario"})
      : super(key: key);

  @override
  _DetalheUsuarioPageState createState() => _DetalheUsuarioPageState();
}

class _DetalheUsuarioPageState
    extends ModularState<DetalheUsuarioPage, DetalheUsuarioController> {
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
