import 'package:commandaapp/app/app_controller.dart';
import 'package:commandaapp/app/modules/main_page/main_page_module.dart';
import 'package:commandaapp/app/modules/qr_scanner/qr_scanner_module.dart';
import 'package:commandaapp/app/modules/splash/splash_module.dart';
import 'package:commandaapp/app/repositories/firebase_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:commandaapp/app/app_widget.dart';
import 'package:commandaapp/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => FirebaseRepository()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: SplashModule()),
        Router(
          '/qr_scanner',
          module: QrScannerModule(),
          transition: TransitionType.downToUp,
        ),
        Router(
          '/login',
          module: HomeModule(),
          transition: TransitionType.fadeIn,
        ),
        Router(
          '/main',
          module: MainPageModule(),
          transition: TransitionType.fadeIn,
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
