import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commandaapp/models/comanda.dart';
import 'package:commandaapp/models/pedido.dart';
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
    return Observer(builder: (context) {
      List<Pedido> pedidos = controller.empresaStore.comanda.pedidos;

      double total = 0;

      controller.empresaStore.comanda.pedidos.forEach((element) {
        total =
            total + element.item.totalPriceWithDiscount * element.quantidade;
      });

      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Meus pedidos (${controller.empresaStore.comanda.pedidos.length}) - Total: R\$ ${total.toStringAsFixed(2)}',
          ),
        ),
        body: ListView(
          children: [
            ...pedidos
                .where((e) {
                  return e.usuario.id == controller.authStore.usuario.id;
                })
                .where((element) => element.concluido == false)
                .map((e) {
                  return ListTile(
                    title: Text(e.quantidade.toString() + 'x ' + e.item.title),
                    subtitle: Text(
                      '${e.horaPedido.day.toString().padLeft(2, '0')}/${e.horaPedido.month.toString().padLeft(2, '0')} '
                      '${e.horaPedido.hour.toString().padLeft(2, '0')}:${e.horaPedido.minute.toString().padLeft(2, '0')}',
                    ),
                    trailing: Text(
                      'R\$ ' +
                          (e.quantidade * e.item.totalPriceWithDiscount)
                              .toStringAsFixed(2),
                    ),
                  );
                })
                .toList(),
            Divider(),
            ...pedidos
                .where((e) => e.usuario.id == controller.authStore.usuario.id)
                .where((element) => element.concluido == true)
                .map((e) {
              return ListTile(
                title: Text(e.quantidade.toString() + 'x ' + e.item.title),
                subtitle: Text(
                  '${e.horaPedido.day.toString().padLeft(2, '0')}/${e.horaPedido.month.toString().padLeft(2, '0')} '
                  '${e.horaPedido.hour.toString().padLeft(2, '0')}:${e.horaPedido.minute.toString().padLeft(2, '0')}',
                ),
                trailing: Icon(Icons.check_circle, color: Colors.green),
              );
            }).toList(),
          ],
        ),
      );
    });
  }
}
