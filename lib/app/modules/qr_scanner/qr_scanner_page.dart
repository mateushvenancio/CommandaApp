import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'qr_scanner_controller.dart';

class QrScannerPage extends StatefulWidget {
  final String title;
  const QrScannerPage({Key key, this.title = "QrScanner"}) : super(key: key);

  @override
  _QrScannerPageState createState() => _QrScannerPageState();
}

class _QrScannerPageState
    extends ModularState<QrScannerPage, QrScannerController> {
  String scanResult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Container(),
      ),
    );
  }
}
