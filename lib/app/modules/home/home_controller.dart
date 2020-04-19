import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  bool isLoading = false;

  @observable
  String loginEmail = '';

  @observable
  String loginPassword = '';

  @action
  void setLoginEmail(String value) => loginEmail = value;

  @action
  void setLoginPassword(String value) => loginPassword = value;

  @computed
  bool get isLoginValid =>
      loginEmail.contains('@') && loginPassword.length >= 6;
}

class ChildrenPageController extends InheritedWidget {
  final Widget child;
  final PageController pageController;
  final HomeController homeController;

  ChildrenPageController({
    this.pageController,
    this.child,
    this.homeController,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return oldWidget != this;
  }

  animateTo(int page) {
    pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  static ChildrenPageController of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ChildrenPageController>();
}
