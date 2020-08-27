import 'package:cached_network_image/cached_network_image.dart';
import 'package:commandaapp/app/modules/home/cardapio/cardapio_module.dart';
import 'package:commandaapp/app/modules/home/meus_pedidos/meus_pedidos_module.dart';
import 'package:commandaapp/shared/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:super_qr_reader/super_qr_reader.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Observer(builder: (_) {
        if (controller.isLoading)
          return Center(child: CircularProgressIndicator());
        if (!controller.empresaExiste)
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${controller.hint}'),
                RaisedButton(
                  child: Text('Ler novo cardápio!'),
                  onPressed: () async {
                    String result = await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScanView()),
                    );
                    await controller.setEmpresaELugar(result);
                    setState(() {});
                  },
                ),
              ],
            ),
          );
        return PageView(
          controller: controller.pageContoller,
          physics: NeverScrollableScrollPhysics(),
          children: [
            RouterOutlet(module: CardapioModule()),
            RouterOutlet(module: MeusPedidosModule()),
          ],
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
        onTap: !controller.empresaExiste
            ? (index) {}
            : (index) {
                setState(() {
                  _index = index;
                });
                controller.goToPage(index);
              },
        currentIndex: _index,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: 'Cardápio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Meus pedidos',
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(controller.usuario.nome),
              accountEmail: Text(controller.authStore.user.email),
              currentAccountPicture: CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(
                  controller.authStore.usuario.fotoPerfil,
                ),
              ),
            ),
            Expanded(child: Container()),
            Divider(),
            ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text('Sair'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
