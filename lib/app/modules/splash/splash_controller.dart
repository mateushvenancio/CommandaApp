import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'splash_controller.g.dart';

class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  _SplashControllerBase() {
    authentication();
  }

  authentication() async {
    await Future.delayed(Duration(seconds: 2));
    FirebaseUser user = await FirebaseAuth.instance.currentUser();

    if (user == null) {
      Modular.to.pushReplacementNamed('/auth');
    } else {
      Modular.to.pushReplacementNamed('/main');
    }
  }
}
