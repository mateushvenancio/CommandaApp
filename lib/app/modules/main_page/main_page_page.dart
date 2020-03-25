import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'main_page_controller.dart';
import 'pages/menu.dart';
import 'pages/my_orders.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        primary: true,
        title: Text('Commanda',
            style: TextStyle(color: Colors.red, fontFamily: 'Lobster')),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            child: Text('M'),
          ),
        ),
      ),
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _currentTabIndex = index;
          });
        },
        controller: pageController,
        children: <Widget>[
          Menu(),
          MyOrders(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
