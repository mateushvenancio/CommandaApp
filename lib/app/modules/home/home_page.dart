import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget _buildTextField() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          autofocus: true,
          maxLength: 10,
          controller: _textController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      );
    }

    bool _isKeyboardVisible() {
      return !(MediaQuery.of(context).viewInsets.bottom == 0);
    }

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Commanda',
          style: TextStyle(
            fontFamily: 'Lobster',
            color: Colors.red,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Olá, bem vindo ao Commanda'),
                Text('Pode começar digitando seu nome abaixo!'),
                SizedBox(
                  height: 20,
                ),
                Container(child: Center(child: _buildTextField())),
              ],
            ),
          ),
          (_isKeyboardVisible())
              ? Container()
              : Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text('Continuar'),
                      color: Colors.red,
                      textColor: Colors.white,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
