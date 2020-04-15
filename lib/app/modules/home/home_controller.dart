import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  bool isLoading = false;

  @action
  void setLoading(bool value) {
    isLoading = value;
  }

  @action
  void validate(String value, BuildContext context) {
    if (value.length > 3) {
      // Condições
      Navigator.pushNamed(context, '/qr_scanner');
    }
  }
}

class ChildrenPageController extends InheritedWidget {
  final Widget child;
  final PageController pageController;

  ChildrenPageController({
    this.pageController,
    this.child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return oldWidget != this;
  }

  fazTalCoisa() {
    print('Imprimiu iruuuuuuu');
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
