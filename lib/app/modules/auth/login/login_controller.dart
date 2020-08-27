import 'package:commandaapp/app/modules/auth/auth_controller.dart';
import 'package:commandaapp/stores/auth_store.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final authStore = Modular.get<AuthController>();
  final userStore = Modular.get<AuthStore>();

  @observable
  String email = '';
  @observable
  String senha = '';

  @action
  setEmail(String value) => email = value;
  @action
  setSenha(String value) => senha = value;

  @observable
  bool isLoading = false;

  @action
  Future<String> fazerLogin() async {
    isLoading = true;

    try {
      var result = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: senha,
      );

      userStore.user = result.user;
      await userStore.getUsuario();

      Modular.to.pushReplacementNamed('/home');

      isLoading = false;
      return "OK";
    } catch (e) {
      String errorText = '';

      switch (e.code.toString()) {
        case "ERROR_INVALID_EMAIL":
          errorText = 'E-mail inválido';
          break;
        case "ERROR_WRONG_PASSWORD":
          errorText = 'Senha errada';
          break;
        case "ERROR_USER_NOT_FOUND":
          errorText = 'Usuário não encontrado';
          break;
        default:
          errorText = 'Login falhou. Tente novamente';
      }

      print('ERRO AQUI Ó ${e.code}');

      isLoading = false;

      return errorText;
    }
  }

  mostrarSnackbar(BuildContext context, Color color, String text) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(text),
      backgroundColor: color,
    ));
  }
}
