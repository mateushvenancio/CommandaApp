import 'package:cached_network_image/cached_network_image.dart';
import 'package:commandaapp/models/empresa.dart';
import 'package:commandaapp/stores/empresa_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'detalhe_empresa_controller.dart';

class DetalheEmpresaPage extends StatefulWidget {
  @override
  _DetalheEmpresaPageState createState() => _DetalheEmpresaPageState();
}

class _DetalheEmpresaPageState
    extends ModularState<DetalheEmpresaPage, DetalheEmpresaController> {
  //use 'controller' variable to access controller
  final empresaStore = Modular.get<EmpresaStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.2,
            child: CachedNetworkImage(imageUrl: empresaStore.empresa.imagem),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  empresaStore.empresa.nome,
                  style: TextStyle(fontSize: 25),
                ),
                Text(empresaStore.empresa.descricao),
                Text(empresaStore.empresa.endereco),
              ],
            ),
          ),
          Divider(),
          ...empresaStore.empresa.contato.telefone.map((e) {
            return ListTile(
              title: Text(e.toString()),
              leading: Icon(FontAwesomeIcons.phone),
            );
          }).toList(),
          ...empresaStore.empresa.contato.email.map<ListTile>((e) {
            return ListTile(
              title: Text(e),
              leading: Icon(FontAwesomeIcons.envelope),
            );
          }).toList(),
        ],
      ),
    );
  }
}
