import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commandaapp/models/comanda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'meus_pedidos_controller.dart';

class MeusPedidosPage extends StatefulWidget {
  @override
  _MeusPedidosPageState createState() => _MeusPedidosPageState();
}

class _MeusPedidosPageState
    extends ModularState<MeusPedidosPage, MeusPedidosController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meus pedidos')),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('empresa')
            .doc(controller.empresaStore.empresa.id)
            .collection('comandas')
            .doc(controller.empresaStore.comanda.id)
            .snapshots(),
        builder: (context, snapshot) {
          print('PASSOU AQUI AAAAAAAAAAAA');

          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());

          Comanda _comanda = Comanda.fromJson(snapshot.data.data());
          return ListView(
            children: [
              ..._comanda.pedidos.where((e) {
                return e.usuario.id == controller.authStore.usuario.id;
              }).map((e) {
                return ListTile(
                  title: Text(e.quantidade.toString() + 'x ' + e.item.title),
                  subtitle: Text(e.horaPedido.toString()),
                );
              }).toList(),
            ],
          );
        },
      ),
    );
  }
}
