import 'package:commandaapp/app/modules/auth/modules/register/register_controller.dart';
import 'package:commandaapp/app/modules/auth/modules/register/register_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RegisterController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => RegisterPage()),
      ];
}
