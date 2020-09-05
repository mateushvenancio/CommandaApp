import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:commandaapp/models/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
  int quantidade = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adicionar item')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: CachedNetworkImage(
              imageUrl: widget.model.image ??
                  'https://medifactia.com/wp-content/uploads/2018/01/placeholder.png',
              fit: BoxFit.contain,
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.model.title ?? '',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                'R\$ ' +
                        widget.model.totalPriceWithDiscount
                            .toStringAsFixed(2) ??
                    '0.00',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Divider(),
          Text('Descrição: ' + widget.model.description ?? ''),
          Text(
            'Tempo de espera: ' + widget.model.cookingTime.toString() ??
                '1' + ' minutos',
          ),
          Divider(),
          Text(
            'Quantidade: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    if (quantidade != 1) {
                      setState(() {
                        quantidade = quantidade - 1;
                      });
                    }
                  },
                ),
                SizedBox(width: 30),
                Text('$quantidade', style: TextStyle(fontSize: 20)),
                SizedBox(width: 30),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      quantidade = quantidade + 1;
                    });
                  },
                ),
              ],
            ),
          ),
          Observer(builder: (_) {
            if (controller.isLoading)
              return Center(child: CircularProgressIndicator());
            return RaisedButton(
              onPressed: () {
                controller.fazerNovoPedido(widget.model, quantidade);
              },
              child: Text('Pedir'),
            );
          }),
          RaisedButton(
            onPressed: () {
              Modular.to.pop();
            },
            child: Text('Voltar'),
          ),
        ],
      ),
    );
  }
}
