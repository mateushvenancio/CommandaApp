import 'package:commandaapp/app/modules/auth/modules/login/login_controller.dart';
import 'package:commandaapp/app/modules/home/pages/login.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => LoginPage()),
      ];
}
