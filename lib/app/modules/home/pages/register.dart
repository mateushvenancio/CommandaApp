import 'package:commandaapp/shared/custom_button.dart';
import 'package:commandaapp/shared/custom_label.dart';
import 'package:commandaapp/shared/custom_text_field.dart';
import 'package:commandaapp/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.95),
      padding: EdgeInsets.symmetric(horizontal: 30),
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
          ),
          Label('E-MAIL'),
          CustomTextField(
            label: 'exemplo@mail.com',
          ),
          Label('SENHA'),
          CustomTextField(
            passwordField: true,
            label: '********',
          ),
          Label('CONFIRMAR SENHA'),
          CustomTextField(
            passwordField: true,
            label: '********',
          ),
          SizedBox(height: 20),
          CustomButton(
              label: Text(
            'CADASTRAR',
            style: TextStyle(color: Colors.white),
          )),
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
    );
  }
}
