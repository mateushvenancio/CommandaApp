import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final double padding;
  final bool passwordField;
  final Function(String) onChanged;

  const CustomTextField({
    Key key,
    this.label = '',
    this.padding = 0,
    this.passwordField = false,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      child: TextField(
        onChanged: onChanged,
        obscureText: passwordField,
        decoration: InputDecoration(
          fillColor: Theme.of(context).primaryColor,
          hintText: label,
        ),
      ),
    );
  }
}
