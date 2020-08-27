import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_star_rating/flutter_star_rating.dart';
import 'cardapio_controller.dart';

class CardapioPage extends StatefulWidget {
  final String title;
  const CardapioPage({Key key, this.title = "Cardapio"}) : super(key: key);

  @override
  _CardapioPageState createState() => _CardapioPageState();
}

class _CardapioPageState
    extends ModularState<CardapioPage, CardapioController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cardápio')),
      body: Observer(builder: (_) {
        if (!controller.empresaExiste)
          return Center(
            child: RaisedButton(
              elevation: 2,
              onPressed: () {
                Modular.to.pushNamed('/qr_scanner');
              },
              child: Text('Ler QR Code'),
            ),
          );
        return SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: controller.authStore.produtos.map((e) {
                  return ListTile(
                    onTap: () {
                      Modular.to.pushNamed('/checkout_item', arguments: e);
                    },
                    leading: CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(e.image),
                    ),
                    title: Text(e.title, overflow: TextOverflow.ellipsis),
                    subtitle: Text(
                      e.description,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Text(
                      'R\$' + e.totalPriceWithDiscount.toStringAsFixed(2),
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        );
      }),
    );
  }
}
