import 'package:cached_network_image/cached_network_image.dart';
import 'package:commandaapp/app/modules/detalhe_empresa/detalhe_empresa_module.dart';
import 'package:commandaapp/app/modules/home/cardapio/cardapio_module.dart';
import 'package:commandaapp/app/modules/home/meus_pedidos/meus_pedidos_module.dart';
import 'package:commandaapp/shared/custom_app_bar.dart';
import 'package:commandaapp/stores/auth_store.dart';
import 'package:commandaapp/stores/empresa_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:super_qr_reader/super_qr_reader.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final empresaStore = Modular.get<EmpresaStore>();
  final authStore = Modular.get<AuthStore>();
  int _index = 0;
  int _indexEmpresa = 0;

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
        return RouterOutletList(
          controller: controller.modulesListController,
          modules: [
            CardapioModule(),
            MeusPedidosModule(),
            DetalheEmpresaModule(),
          ],
          physics: NeverScrollableScrollPhysics(),
        );
      }),
      bottomNavigationBar: Observer(builder: (context) {
        if (empresaStore.empresa == null)
          return BottomNavigationBar(
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.qrcode),
                title: Text('Novo'),
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.user),
                title: Text('Perfil'),
              ),
            ],
            onTap: (value) {
              if (value == 1) {
                Scaffold.of(context).openDrawer();
              }
            },
          );
        return BottomNavigationBar(
          onTap: !controller.empresaExiste
              ? (index) {}
              : (index) {
                  controller.modulesListController.changeModule(index);
                  setState(() {
                    _indexEmpresa = index;
                  });
                },
          currentIndex: _indexEmpresa,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bookOpen),
              title: Text('Cardápio'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.utensils),
              title: Text('Meus pedidos'),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.infoCircle),
              title: Text('Sobre'),
            )
          ],
        );
      }),
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
