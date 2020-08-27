import 'package:commandaapp/app/modules/home/meus_pedidos/meus_pedidos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'meus_pedidos_page.dart';

class MeusPedidosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MeusPedidosController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => MeusPedidosPage()),
      ];

  static Inject get to => Inject<MeusPedidosModule>.of();
}
