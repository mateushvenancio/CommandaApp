import 'package:commandaapp/app/app_controller.dart';
import 'package:commandaapp/app/modules/auth/auth_module.dart';
import 'package:commandaapp/app/modules/detalhe_usuario/detalhe_usuario_module.dart';
import 'package:commandaapp/app/modules/home/cardapio/checkout_item/checkout_item_module.dart';
import 'package:commandaapp/app/modules/home/home_module.dart';
import 'package:commandaapp/app/modules/splash/splash_module.dart';
import 'package:commandaapp/app/repositories/firebase_repository.dart';
import 'package:commandaapp/stores/auth_store.dart';
import 'package:commandaapp/stores/empresa_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:commandaapp/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => FirebaseRepository()),
        Bind((i) => EmpresaStore()),
        Bind((i) => AuthStore()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: SplashModule()),
        ModularRouter(
          '/auth',
          module: AuthModule(),
          transition: TransitionType.fadeIn,
        ),
        ModularRouter(
          '/home',
          module: HomeModule(),
          transition: TransitionType.fadeIn,
        ),
        ModularRouter(
          '/checkout_item',
          module: CheckoutItemModule(),
          transition: TransitionType.fadeIn,
        ),
        ModularRouter(
          '/detalhe_usuario',
          module: DetalheUsuarioModule(),
          transition: TransitionType.fadeIn,
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
