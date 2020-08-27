import 'package:commandaapp/stores/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mobx/mobx.dart';
part 'splash_controller.g.dart';

class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  final userStore = Modular.get<AuthStore>();

  _SplashControllerBase() {
    authentication();
  }

  authentication() async {
    await Firebase.initializeApp();
    await Future.delayed(Duration(seconds: 2));
    await userStore.init();

    if (userStore.user == null) {
      Modular.to.pushReplacementNamed('/auth');
    } else {
      Modular.to.pushReplacementNamed('/home');
    }
  }
}
