import 'package:commandaapp/app/modules/auth/auth_controller.dart';
import 'package:commandaapp/app/modules/auth/continue/continue_module.dart';
import 'package:commandaapp/app/modules/auth/login/login_module.dart';
import 'package:commandaapp/app/modules/auth/register/register_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends ModularState<AuthPage, AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: [
          RouterOutlet(module: ContinueModule()),
          RouterOutlet(module: LoginModule()),
          RouterOutlet(module: RegisterModule()),
        ],
      ),
    );
  }
}
