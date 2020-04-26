import 'package:commandaapp/app/modules/main_page/pages/orders.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'pages/menu.dart';

part 'main_page_controller.g.dart';

class MainPageController = _MainPageControllerBase with _$MainPageController;

abstract class _MainPageControllerBase with Store {
  @observable
  Widget currentPage = Menu();

  @action
  void changePage(int index) {
    switch (index) {
      case 0:
        currentPage = Menu();
        break;
      case 1:
        currentPage = Orders();
        break;
      default:
        currentPage = Menu();
        break;
    }
  }
}
