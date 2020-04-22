import 'package:commandaapp/shared/custom_button.dart';
import 'package:commandaapp/shared/custom_label.dart';
import 'package:commandaapp/shared/custom_text_field.dart';
import 'package:commandaapp/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final _controller = ChildrenPageController.of(context).homeController;

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
                onChanged: ChildrenPageController.of(context)
                    .homeController
                    .setRegisterName,
              ),
              Label('E-MAIL'),
              CustomTextField(
                label: 'exemplo@mail.com',
                onChanged: ChildrenPageController.of(context)
                    .homeController
                    .setRegisterEmail,
              ),
              Label('SENHA'),
              CustomTextField(
                passwordField: true,
                label: '********',
                onChanged: ChildrenPageController.of(context)
                    .homeController
                    .setRegisterPassword,
              ),
              Label('CONFIRMAR SENHA'),
              CustomTextField(
                passwordField: true,
                label: '********',
                onChanged: ChildrenPageController.of(context)
                    .homeController
                    .setRegisterConfirmPassword,
              ),
              SizedBox(height: 20),
              Observer(builder: (_) {
                return CustomButton(
                  label:
                      Text('CADASTRAR', style: TextStyle(color: Colors.white)),
                  onTap: _controller.passwordMatch
                      ? _controller.isRegisterFormValid
                          ? _controller.register(context)
                          : () => _onError()
                      : () => _onPasswordDismatch(),
                );
              }),
              SizedBox(height: 10),
              CustomButton(
                backgroundColor: Colors.white,
                label: Text('VOLTAR'),
                onTap: () {
                  ChildrenPageController.of(context).animateTo(1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
