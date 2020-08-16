import 'package:commandaapp/shared/custom_button.dart';
import 'package:commandaapp/shared/custom_label.dart';
import 'package:commandaapp/shared/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
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
                onChanged: controller.setEmail,
              ),
              SizedBox(height: 20),
              Container(width: double.infinity, child: Label('senha')),
              CustomTextField(
                passwordField: true,
                label: '******',
                onChanged: controller.setSenha,
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
                  if (controller.isLoading)
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  return CustomButton(
                    backgroundColor: Colors.transparent,
                    label: Text('LOGIN'),
                    onTap: () {
                      controller.fazerLogin().then((value) {
                        if (value != "OK")
                          controller.mostrarSnackbar(
                            context,
                            Colors.red,
                            value,
                          );
                      });
                    },
                  );
                },
              ),
              SizedBox(height: 10),
              CustomButton(
                label: Text('REGISTRAR', style: TextStyle(color: Colors.white)),
                onTap: () {
                  controller.authStore.goToPage(2);
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
                  controller.authStore.goToPage(0);
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
