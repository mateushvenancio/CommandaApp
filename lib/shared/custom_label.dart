import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String label;
  final double fontSize;

  const Label(this.label, {this.fontSize = 18});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '${label.toUpperCase()}',
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
