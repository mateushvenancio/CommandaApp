import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(80);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListTile(
          title: Text('Bem vindo,'),
          leading: CircleAvatar(
            child: Text('M', style: TextStyle(color: Colors.white)),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          subtitle: Text('Mateus'),
          trailing: IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
