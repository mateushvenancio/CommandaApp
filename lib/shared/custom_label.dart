import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String label;
  final double fontSize;
  final Color textColor;

  const Label(this.label, {this.fontSize = 18, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '${label.toUpperCase()}',
        style: TextStyle(
          color: textColor ?? Theme.of(context).primaryColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
