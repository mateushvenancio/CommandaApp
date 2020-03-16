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
