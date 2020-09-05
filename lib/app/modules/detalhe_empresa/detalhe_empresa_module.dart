import 'detalhe_empresa_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'detalhe_empresa_page.dart';

class DetalheEmpresaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $DetalheEmpresaController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => DetalheEmpresaPage()),
      ];

  static Inject get to => Inject<DetalheEmpresaModule>.of();
}
