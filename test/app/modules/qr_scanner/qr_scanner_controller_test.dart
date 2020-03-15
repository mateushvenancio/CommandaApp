import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:commandaapp/app/modules/qr_scanner/qr_scanner_controller.dart';
import 'package:commandaapp/app/modules/qr_scanner/qr_scanner_module.dart';

void main() {
  initModule(QrScannerModule());
  // QrScannerController qrscanner;
  //
  setUp(() {
    //     qrscanner = QrScannerModule.to.get<QrScannerController>();
  });

  group('QrScannerController Test', () {
    //   test("First Test", () {
    //     expect(qrscanner, isInstanceOf<QrScannerController>());
    //   });

    //   test("Set Value", () {
    //     expect(qrscanner.value, equals(0));
    //     qrscanner.increment();
    //     expect(qrscanner.value, equals(1));
    //   });
  });
}
