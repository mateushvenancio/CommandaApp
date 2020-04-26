import 'package:commandaapp/app/modules/auth/modules/continue/continue_controller.dart';
import 'package:commandaapp/app/modules/auth/modules/continue/continue_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ContinueModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ContinueController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ContinuePage()),
      ];
}
