import 'package:cached_network_image/cached_network_image.dart';
import 'package:commandaapp/stores/auth_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
  final authStore = Modular.get<AuthStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu perfil'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 150,
            width: 150,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: ClipOval(
              child: Align(
                heightFactor: 1,
                widthFactor: 1,
                child: CachedNetworkImage(
                  imageUrl: authStore.usuario.fotoPerfil,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  authStore.usuario.nome,
                  style: TextStyle(fontSize: 25),
                ),
                Text(authStore.usuario.email),
                Text(authStore.usuario.cpf.toString()),
              ],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Meus pedidos:'),
          ),
          Observer(builder: (_) {
            if (controller.pedidos.isEmpty) {
              return Center(child: Text('Sem pedidos ainda!'));
            }
            return ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: controller.pedidos.map((e) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(controller.empresaStore?.empresa?.nome ?? ''),
                    ListTile(
                      title: Text(e.item?.title ?? ''),
                      subtitle: Text(
                        'Quantidade: ${e.quantidade} - Valor total: ${e.item?.totalPriceWithDiscount.toStringAsFixed(2).replaceAll('.', ',') ?? ''}',
                      ),
                    ),
                    Divider(),
                  ],
                );
              }).toList(),
            );
          }),
        ],
      ),
    );
  }
}
