import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'main_page_controller.dart';

class MainPagePage extends StatefulWidget {
  final String title;
  const MainPagePage({Key key, this.title = "MainPage"}) : super(key: key);

  @override
  _MainPagePageState createState() => _MainPagePageState();
}

class _MainPagePageState
    extends ModularState<MainPagePage, MainPageController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
