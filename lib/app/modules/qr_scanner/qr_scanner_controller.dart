import 'package:mobx/mobx.dart';

part 'qr_scanner_controller.g.dart';

class QrScannerController = _QrScannerControllerBase with _$QrScannerController;

abstract class _QrScannerControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
