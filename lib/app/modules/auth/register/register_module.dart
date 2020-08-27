import 'package:commandaapp/app/modules/auth/register/register_controller.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'register_page.dart';

class RegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RegisterController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => RegisterPage()),
      ];

  static Inject get to => Inject<RegisterModule>.of();
}
