import 'package:barcode_scan/barcode_scan.dart';
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
    Widget _buildAppBar = AppBar(
      title: Text(
        widget.title,
        style: TextStyle(color: Colors.red),
      ),
      iconTheme: IconThemeData(color: Colors.red),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );

    _scanQrCode() async {
      try {
        final result = await BarcodeScanner.scan();
        setState(() {
          scanResult = result;
        });
      } catch (e) {
        print('Erro: $e');
      }
    }

    if (scanResult.isEmpty) {
      _scanQrCode();
    } else {
      Navigator.pushReplacementNamed(context, 'routeName');
    }

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
