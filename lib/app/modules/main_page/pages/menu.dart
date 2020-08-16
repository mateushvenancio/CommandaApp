import 'package:commandaapp/app/modules/main_page/pages/menu_components/category.dart';
import 'package:commandaapp/app/tiles/menu_tile.dart';
import 'package:commandaapp/model/category.dart';
import 'package:commandaapp/model/menu_item.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<Category> listCategory = [
    // Category(
    //   title: 'Pizza',
    //   image:
    //       'https://img.stpu.com.br/?img=https://s3.amazonaws.com/pu-mgr/default/a0R0f000010xA7GEAU/5c489cd8e4b0842c9b1b6c10.jpg',
    // ),
    // Category(
    //   title: 'Sanduíche',
    //   image:
    //       'https://www.qgjeitinhocaseiro.com/wp-content/uploads/2019/10/como-fazer-sandu%C3%ADche-artigo-crop.jpg',
    // ),
    // Category(
    //   title: 'Acompanhamento',
    //   image:
    //       'https://receitatodahora.com.br/wp-content/uploads/2018/10/massa-de-salgado-com-batata.jpg',
    // ),
    // Category(
    //   title: 'Cerveja',
    //   image:
    //       'https://static.pr.ricmais.com.br/ricmaispr/uploads/2020/01/cerveja-contaminada-parana.jpg',
    // ),
    // Category(
    //   title: 'Refrigerante',
    //   image:
    //       'https://s2.glbimg.com/3j4LYJ8CFkAuMXYGihKMKoAZl_U=/512x320/smart/e.glbimg.com/og/ed/f/original/2018/08/17/beber-refrigerante-todos-os-dias-esta-te-matando.jpg',
    // ),
    // Category(
    //   title: 'Suco',
    //   image:
    //       'https://media.gazetadopovo.com.br/viver-bem/2019/06/suco-fruta-acucar-risco-morte-600x400-f107f9a0.jpg',
    // ),
  ];

  List<MenuItem> tileMenuItem = [
    // MenuItem(
    //   title: 'Batata frita',
    //   description: 'Batata frita bem crocante',
    //   price: 15.25,
    //   discount: 0,
    //   category: 'Acompanhamento',
    //   image:
    //       'https://www.comidaereceitas.com.br/img/sizeswp/1200x675/2007/11/batata_frita_sequinhaaa.jpg',
    //   rate: [4, 5, 3, 5, 4],
    //   cookingTime: 20,
    // ),
    // MenuItem(
    //   title: 'Pizza de Calabresa Média',
    //   description: 'Presunto, queijo, calabresa, tomate, azeitona, bacon',
    //   price: 25.15,
    //   discount: 15,
    //   category: 'Pizza',
    //   image:
    //       'https://media-cdn.tripadvisor.com/media/photo-s/18/1a/d5/1e/casteloes.jpg',
    //   rate: [1, 3, 4, 5, 2],
    //   cookingTime: 45,
    // ),
    // MenuItem(
    //   title: 'Batata frita',
    //   description: 'Batata frita bem crocante',
    //   price: 15.25,
    //   discount: 0,
    //   category: 'Acompanhamento',
    //   image:
    //       'https://www.comidaereceitas.com.br/img/sizeswp/1200x675/2007/11/batata_frita_sequinhaaa.jpg',
    //   rate: [4, 5, 3, 5, 4],
    //   cookingTime: 20,
    // ),
    // MenuItem(
    //   title: 'Pizza de Calabresa Média',
    //   description: 'Presunto, queijo, calabresa, tomate, azeitona, bacon',
    //   price: 25.15,
    //   discount: 15,
    //   category: 'Pizza',
    //   image:
    //       'https://media-cdn.tripadvisor.com/media/photo-s/18/1a/d5/1e/casteloes.jpg',
    //   rate: [1, 3, 4, 5, 2],
    //   cookingTime: 45,
    // ),
    // MenuItem(
    //   title: 'Batata frita',
    //   description: 'Batata frita bem crocante',
    //   price: 15.25,
    //   discount: 0,
    //   category: 'Acompanhamento',
    //   image:
    //       'https://www.comidaereceitas.com.br/img/sizeswp/1200x675/2007/11/batata_frita_sequinhaaa.jpg',
    //   rate: [4, 5, 3, 5, 4],
    //   cookingTime: 20,
    // ),
    // MenuItem(
    //   title: 'Pizza de Calabresa Média',
    //   description: 'Presunto, queijo, calabresa, tomate, azeitona, bacon',
    //   price: 25.15,
    //   discount: 15,
    //   category: 'Pizza',
    //   image:
    //       'https://media-cdn.tripadvisor.com/media/photo-s/18/1a/d5/1e/casteloes.jpg',
    //   rate: [1, 3, 4, 5, 2],
    //   cookingTime: 45,
    // ),
    // MenuItem(
    //   title: 'Batata frita',
    //   description: 'Batata frita bem crocante',
    //   price: 15.25,
    //   discount: 0,
    //   category: 'Acompanhamento',
    //   image:
    //       'https://www.comidaereceitas.com.br/img/sizeswp/1200x675/2007/11/batata_frita_sequinhaaa.jpg',
    //   rate: [4, 5, 3, 5, 4],
    //   cookingTime: 20,
    // ),
    // MenuItem(
    //   title: 'Pizza de Calabresa Média',
    //   description: 'Presunto, queijo, calabresa, tomate, azeitona, bacon',
    //   price: 25.15,
    //   discount: 15,
    //   category: 'Pizza',
    //   image:
    //       'https://media-cdn.tripadvisor.com/media/photo-s/18/1a/d5/1e/casteloes.jpg',
    //   rate: [1, 3, 4, 5, 2],
    //   cookingTime: 45,
    // ),
    // MenuItem(
    //   title: 'Batata frita',
    //   description: 'Batata frita bem crocante',
    //   price: 15.25,
    //   discount: 0,
    //   category: 'Acompanhamento',
    //   image:
    //       'https://www.comidaereceitas.com.br/img/sizeswp/1200x675/2007/11/batata_frita_sequinhaaa.jpg',
    //   rate: [4, 5, 3, 5, 4],
    //   cookingTime: 20,
    // ),
    // MenuItem(
    //   title: 'Pizza de Calabresa Média',
    //   description: 'Presunto, queijo, calabresa, tomate, azeitona, bacon',
    //   price: 25.15,
    //   discount: 15,
    //   category: 'Pizza',
    //   image:
    //       'https://media-cdn.tripadvisor.com/media/photo-s/18/1a/d5/1e/casteloes.jpg',
    //   rate: [1, 3, 4, 5, 2],
    //   cookingTime: 45,
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ListCategory(categories: listCategory),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: tileMenuItem.length,
            itemBuilder: (BuildContext context, int index) {
              return MenuTile(tileMenuItem[index]);
            },
          ),
        ],
      ),
    );
  }
}
