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
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Image.asset('assets/images/bg.jpg', fit: BoxFit.cover),
          ),
          ChildrenPageController(
            pageController: _pageController,
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: <Widget>[
                ContinuePage(),
                LoginPage(),
                RegisterPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
