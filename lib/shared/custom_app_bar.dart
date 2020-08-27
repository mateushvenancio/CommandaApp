import 'package:cached_network_image/cached_network_image.dart';
import 'package:commandaapp/stores/empresa_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(80);
}

class _CustomAppBarState extends State<CustomAppBar> {
  final empresaStore = Modular.get<EmpresaStore>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListTile(
          title: Text('Bem vindo a,', overflow: TextOverflow.ellipsis),
          leading: empresaStore?.empresa?.imagem == null ||
                  empresaStore?.empresa?.imagem == ''
              ? CircleAvatar(
                  child: Icon(Icons.store, color: Colors.white),
                  backgroundColor: Theme.of(context).primaryColor,
                )
              : CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    empresaStore.empresa.imagem,
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
          subtitle: Text(
            empresaStore?.empresa?.nome ?? '',
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Lugar:'),
              Text('${empresaStore.comanda?.lugar ?? ''}'),
            ],
          ),
        ),
      ),
    );
  }
}
