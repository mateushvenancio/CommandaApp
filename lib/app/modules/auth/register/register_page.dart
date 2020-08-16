import 'package:commandaapp/shared/custom_button.dart';
import 'package:commandaapp/shared/custom_label.dart';
import 'package:commandaapp/shared/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'register_controller.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key key, this.title = "Register"}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState
    extends ModularState<RegisterPage, RegisterController> {
  @override
  Widget build(BuildContext context) {
    _onError() {
      Scaffold.of(context).showSnackBar(SnackBar(
        backgroundColor: Theme.of(context).primaryColor,
        content: Text(
          'Formulário inválido.',
          style: TextStyle(color: Colors.white),
        ),
      ));
    }

    _onPasswordDismatch() {
      Scaffold.of(context).showSnackBar(SnackBar(
        backgroundColor: Theme.of(context).primaryColor,
        content: Text(
          'As senhas não coincidem.',
          style: TextStyle(color: Colors.white),
        ),
      ));
    }

    return Container(
      color: Colors.white.withOpacity(0.95),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Registre-se',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Label('NOME'),
              CustomTextField(
                label: 'João da Silva',
                onChanged: (a) {},
              ),
              Label('E-MAIL'),
              CustomTextField(
                label: 'exemplo@mail.com',
                onChanged: (a) {},
              ),
              Label('SENHA'),
              CustomTextField(
                passwordField: true,
                label: '********',
                onChanged: (a) {},
              ),
              Label('CONFIRMAR SENHA'),
              CustomTextField(
                passwordField: true,
                label: '********',
              ),
              SizedBox(height: 20),
              Observer(builder: (_) {
                return CustomButton(
                  label: Text(
                    'CADASTRAR',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {},
                );
              }),
              SizedBox(height: 10),
              CustomButton(
                backgroundColor: Colors.white,
                label: Text('VOLTAR'),
                onTap: () {
                  controller.authStore.goToPage(1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
