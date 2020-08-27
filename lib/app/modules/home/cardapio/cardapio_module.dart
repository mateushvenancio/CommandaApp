import 'package:commandaapp/app/modules/home/cardapio/cardapio_controller.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'cardapio_page.dart';

class CardapioModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CardapioController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => CardapioPage()),
      ];

  static Inject get to => Inject<CardapioModule>.of();
}
