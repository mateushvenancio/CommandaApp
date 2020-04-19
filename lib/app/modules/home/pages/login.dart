import 'package:commandaapp/app/modules/home/home_controller.dart';
import 'package:commandaapp/shared/custom_button.dart';
import 'package:commandaapp/shared/custom_label.dart';
import 'package:commandaapp/shared/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    _onError() {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text(
          'Campo de email ou senha inválidos.',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        duration: Duration(seconds: 2),
      ));
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      color: Colors.white.withOpacity(0.95),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(width: double.infinity, child: Label('email')),
              CustomTextField(
                label: 'exemplo@mail.com',
                onChanged: ChildrenPageController.of(context)
                    .homeController
                    .setLoginEmail,
              ),
              SizedBox(height: 20),
              Container(width: double.infinity, child: Label('senha')),
              CustomTextField(
                passwordField: true,
                label: '******',
                onChanged: ChildrenPageController.of(context)
                    .homeController
                    .setLoginPassword,
              ),
              Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.centerRight,
                width: double.infinity,
                child: Text(
                  'Esqueceu a senha?',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              Observer(
                builder: (_) {
                  return CustomButton(
                    backgroundColor: Colors.transparent,
                    label: Text('LOGIN'),
                    onTap: ChildrenPageController.of(context)
                            .homeController
                            .isLoginValid
                        ? () {
                            Navigator.pushReplacementNamed(context, '/main');
                          }
                        : () => _onError(),
                  );
                },
              ),
              SizedBox(height: 10),
              CustomButton(
                label: Text('REGISTRAR', style: TextStyle(color: Colors.white)),
                onTap: () {
                  ChildrenPageController.of(context).animateTo(2);
                },
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Expanded(child: Divider()),
                  Text('OU ENTRE COM', style: TextStyle(fontSize: 8)),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Expanded(
                    child: CustomButton(
                      backgroundColor: Colors.blue,
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.facebookF, color: Colors.white),
                          Text('Facebook',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      backgroundColor: Colors.white,
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.google, color: Colors.blue),
                          SizedBox(width: 5),
                          Text('Google'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  ChildrenPageController.of(context).animateTo(0);
                },
                child: Text('Continuar sem entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
