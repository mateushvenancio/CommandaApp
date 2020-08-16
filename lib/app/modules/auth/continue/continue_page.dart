import 'package:commandaapp/shared/custom_button.dart';
import 'package:commandaapp/shared/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'continue_controller.dart';

class ContinuePage extends StatefulWidget {
  final String title;
  const ContinuePage({Key key, this.title = "Continue"}) : super(key: key);

  @override
  _ContinuePageState createState() => _ContinuePageState();
}

class _ContinuePageState
    extends ModularState<ContinuePage, ContinueController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.95),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('Continuar por enquanto',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 50),
          CustomTextField(
            label: 'João da Silva',
          ),
          SizedBox(height: 50),
          CustomButton(
              label: Text(
            'CONTINUAR',
            style: TextStyle(color: Colors.white),
          )),
          SizedBox(height: 10),
          CustomButton(
            backgroundColor: Colors.white,
            label: Text('VOLTAR'),
            onTap: () {
              controller.authStore.goToPage(1);
            },
          ),
        ],
      ),
    );
  }
}
