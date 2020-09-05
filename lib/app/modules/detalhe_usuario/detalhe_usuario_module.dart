import 'detalhe_usuario_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'detalhe_usuario_page.dart';

class DetalheUsuarioModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $DetalheUsuarioController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => DetalheUsuarioPage()),
      ];

  static Inject get to => Inject<DetalheUsuarioModule>.of();
}
