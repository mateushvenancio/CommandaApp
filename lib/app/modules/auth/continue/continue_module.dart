import 'package:commandaapp/app/modules/auth/continue/continue_controller.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'continue_page.dart';

class ContinueModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ContinueController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ContinuePage()),
      ];

  static Inject get to => Inject<ContinueModule>.of();
}
