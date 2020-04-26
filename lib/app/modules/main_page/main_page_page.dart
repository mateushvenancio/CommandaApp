import 'package:commandaapp/app/modules/main_page/pages/menu_components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'main_page_controller.dart';
import 'modules/order/order_page.dart';
import 'pages/menu.dart';

class MainPagePage extends StatefulWidget {
  @override
  _MainPagePageState createState() => _MainPagePageState();
}

class _MainPagePageState
    extends ModularState<MainPagePage, MainPageController> {
  //use 'controller' variable to access controller

  final pageController = PageController();
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _currentTabIndex = index;
          });
        },
        controller: pageController,
        children: <Widget>[
          Menu(),
          OrderPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        onTap: (index) {
          setState(() {
            _currentTabIndex = index;
            pageController.jumpToPage(index);
          });
        },
        showUnselectedLabels: false,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            title: Text('Cardápio'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text('Meus pedidos'),
          ),
        ],
      ),
    );
  }
}
