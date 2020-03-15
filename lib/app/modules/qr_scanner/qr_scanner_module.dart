import 'package:commandaapp/app/modules/qr_scanner/qr_scanner_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:commandaapp/app/modules/qr_scanner/qr_scanner_page.dart';

class QrScannerModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => QrScannerController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => QrScannerPage()),
      ];

  static Inject get to => Inject<QrScannerModule>.of();
}
