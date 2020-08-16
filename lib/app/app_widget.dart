import 'package:commandaapp/consts/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Commanda',
      theme: ThemeData(
        textTheme: GoogleFonts.merriweatherTextTheme(),
        primaryColor: CustomColors.pink,
        accentColor: CustomColors.red,
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
