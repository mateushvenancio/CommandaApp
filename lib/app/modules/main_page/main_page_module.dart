import 'package:commandaapp/app/modules/main_page/main_page_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:commandaapp/app/modules/main_page/main_page_page.dart';

class MainPageModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MainPageController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => MainPagePage()),
      ];

  static Inject get to => Inject<MainPageModule>.of();
}
