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
    _scanQrCode() async {
      try {
        // final result = await BarcodeScanner.scan();
        setState(() {});
        await Navigator.pushReplacementNamed(context, '/main');
      } catch (e) {
        print('Erro: $e');
      }
    }

    if (scanResult == '') _scanQrCode();

    return Scaffold(
      // appBar: _buildAppBar,
      body: Container(
        child: Center(
          child: MaterialButton(
            onPressed: () => _scanQrCode(),
            child: Text('$scanResult'),
          ),
        ),
      ),
    );
  }
}
