import 'package:commandaapp/app/modules/home/pages/continue.dart';
import 'package:commandaapp/app/modules/home/pages/login.dart';
import 'package:commandaapp/app/modules/home/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final PageController _pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/bg.jpg', fit: BoxFit.cover),
          ),
          PageView(
            controller: _pageController,
            children: <Widget>[
              ContinuePage(),
              LoginPage(),
              RegisterPage(),
            ],
          ),
        ],
      ),
    );
  }
}
