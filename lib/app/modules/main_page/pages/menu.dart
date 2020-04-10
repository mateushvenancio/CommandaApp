import 'package:commandaapp/model/category.dart';
import 'package:commandaapp/model/menu_item.dart';
import 'package:commandaapp/shared/category.dart';
import 'package:commandaapp/shared/menu_item.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<Category> listCategory = [
    Category(
      title: 'Pizza',
      image:
          'https://img.stpu.com.br/?img=https://s3.amazonaws.com/pu-mgr/default/a0R0f000010xA7GEAU/5c489cd8e4b0842c9b1b6c10.jpg',
    ),
    Category(
      title: 'Sanduíche',
      image:
          'https://www.qgjeitinhocaseiro.com/wp-content/uploads/2019/10/como-fazer-sandu%C3%ADche-artigo-crop.jpg',
    ),
    Category(
      title: 'Acompanhamento',
      image:
          'https://receitatodahora.com.br/wp-content/uploads/2018/10/massa-de-salgado-com-batata.jpg',
    ),
    Category(
      title: 'Cerveja',
      image:
          'https://static.pr.ricmais.com.br/ricmaispr/uploads/2020/01/cerveja-contaminada-parana.jpg',
    ),
    Category(
      title: 'Refrigerante',
      image:
          'https://s2.glbimg.com/3j4LYJ8CFkAuMXYGihKMKoAZl_U=/512x320/smart/e.glbimg.com/og/ed/f/original/2018/08/17/beber-refrigerante-todos-os-dias-esta-te-matando.jpg',
    ),
    Category(
      title: 'Suco',
      image:
          'https://media.gazetadopovo.com.br/viver-bem/2019/06/suco-fruta-acucar-risco-morte-600x400-f107f9a0.jpg',
    ),
  ];

  List<MenuItem> tileMenuItem = [
    MenuItem(
      title: 'Batata frita',
      description: 'Batata frita bem crocante',
      price: 15.25,
      discount: 0,
      category: 'Acompanhamento',
      image:
          'https://www.comidaereceitas.com.br/img/sizeswp/1200x675/2007/11/batata_frita_sequinhaaa.jpg',
    ),
    MenuItem(
      title: 'Pizza de Calabresa Média',
      description: 'Presunto, queijo, calabresa, tomate, azeitona, bacon',
      price: 25.15,
      discount: 15,
      category: 'Pizza',
      image:
          'https://media-cdn.tripadvisor.com/media/photo-s/18/1a/d5/1e/casteloes.jpg',
    ),
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
              itemCount: listCategory.length,
              itemBuilder: (context, index) {
                Category current = listCategory[index];
                return CategoryTile(current);
              },
            ),
          ),
          Container(
            height: 500,
            width: 500,
            child: ListView.builder(
              itemCount: tileMenuItem.length,
              itemBuilder: (BuildContext context, int index) {
                return MenuItemTile(tileMenuItem[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
