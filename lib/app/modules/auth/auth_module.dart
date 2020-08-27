import 'package:commandaapp/app/modules/auth/auth_controller.dart';
import 'package:commandaapp/app/modules/auth/auth_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AuthController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => AuthPage()),
      ];
}
