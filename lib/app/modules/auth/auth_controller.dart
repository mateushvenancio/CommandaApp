import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final PageController pageController = PageController(initialPage: 1);

  goToPage(int page) {
    pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 200),
      curve: Curves.decelerate,
    );
  }
}
