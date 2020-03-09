import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Column(
          children: [
            AppBar(
              title: Text(
                'Commanda',
                style: TextStyle(
                  fontFamily: 'Lobster',
                ),
              ),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Saiba mais',
                  style: TextStyle(fontSize: 8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
