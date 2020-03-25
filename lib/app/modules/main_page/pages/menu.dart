import 'package:commandaapp/model/category_item.model.dart';
import 'package:commandaapp/model/category_item.widget.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<Category> listMenuItem = [
    Category(
        'Pizza',
        'https://img.stpu.com.br/?img=https://s3.amazonaws.com/pu-mgr/default/a0R0f000010xA7GEAU/5c489cd8e4b0842c9b1b6c10.jpg',
        ''),
    Category(
        'Sanduíche',
        'https://www.qgjeitinhocaseiro.com/wp-content/uploads/2019/10/como-fazer-sandu%C3%ADche-artigo-crop.jpg',
        ''),
    Category(
        'Salgado',
        'https://receitatodahora.com.br/wp-content/uploads/2018/10/massa-de-salgado-com-batata.jpg',
        ''),
    Category(
        'Cerveja',
        'https://static.pr.ricmais.com.br/ricmaispr/uploads/2020/01/cerveja-contaminada-parana.jpg',
        ''),
    Category(
        'Refrigerante',
        'https://s2.glbimg.com/3j4LYJ8CFkAuMXYGihKMKoAZl_U=/512x320/smart/e.glbimg.com/og/ed/f/original/2018/08/17/beber-refrigerante-todos-os-dias-esta-te-matando.jpg',
        ''),
    Category(
        'Suco',
        'https://media.gazetadopovo.com.br/viver-bem/2019/06/suco-fruta-acucar-risco-morte-600x400-f107f9a0.jpg',
        ''),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listMenuItem.length,
              itemBuilder: (context, index) {
                Category current = listMenuItem[index];
                return CategoryTile(current);
              },
            ),
          ),
        ],
      ),
    );
  }
}
