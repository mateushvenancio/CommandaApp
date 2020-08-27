import 'package:commandaapp/models/usuario.dart';
import 'package:commandaapp/stores/auth_store.dart';
import 'package:commandaapp/stores/empresa_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final authStore = Modular.get<AuthStore>();
  final empresaStore = Modular.get<EmpresaStore>();

  @observable
  bool isLoading = false;
  @observable
  String hint = '';

  @computed
  Usuario get usuario => authStore.usuario;

  @computed
  bool get empresaExiste => empresaStore.empresa != null;
  @action
  setEmpresaELugar(String value) async {
    isLoading = true;
    // try {
    await empresaStore.getEmpresa(value.split('%%').last);
    await empresaStore.getComanda(value.split('%%').first.replaceAll('#', ''));
    // } catch (e) {
    //   print(e);
    //   hint = 'QR Code inválido';
    // }

    isLoading = false;
  }

  final pageContoller = PageController(initialPage: 1);
  goToPage(int page) {
    pageContoller.animateToPage(
      page,
      duration: Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }
}
