import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final _homeController = HomeController();
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool _isKeyboardVisible = !(MediaQuery.of(context).viewInsets.bottom == 0);

    Widget _buildTextField() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          maxLength: 10,
          textAlign: TextAlign.center,
          onChanged: (String value) {},
          controller: _textController,
          cursorColor: Colors.red,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      );
    }

    Widget _buildForm() {
      return Column(
        mainAxisAlignment: (_isKeyboardVisible)
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Pode começar digitando seu nome abaixo!'),
                SizedBox(
                  height: 20,
                ),
                Container(child: Center(child: _buildTextField())),
              ],
            ),
          ),
          (_isKeyboardVisible)
              ? Container()
              : Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: FlatButton(
                      onPressed: (_textController.text.length > 3)
                          ? () => _homeController.validate(_textController.text)
                          : null,
                      child: Text('Continuar'),
                      color: Colors.red,
                      textColor: Colors.white,
                    ),
                  ),
                ),
        ],
      );
    }

    return Scaffold(
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
      body: Observer(
        builder: (_) {
          if (_homeController.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return _buildForm();
          }
        },
      ),
    );
  }
}
