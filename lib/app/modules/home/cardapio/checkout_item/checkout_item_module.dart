import 'package:commandaapp/app/modules/home/cardapio/checkout_item/checkout_item_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'checkout_item_page.dart';

class CheckoutItemModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CheckoutItemController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => CheckoutItemPage(args.data)),
      ];

  static Inject get to => Inject<CheckoutItemModule>.of();
}
