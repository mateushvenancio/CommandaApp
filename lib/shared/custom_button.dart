import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double width;
  final Widget label;
  final Color backgroundColor;

  const CustomButton({
    this.height = 45,
    this.width = double.infinity,
    @required this.label,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    var _borderRadius = BorderRadius.circular(height / 2);

    return Material(
      borderRadius: _borderRadius,
      elevation: 2,
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: backgroundColor == null
                ? Theme.of(context).primaryColor
                : backgroundColor,
          ),
          alignment: Alignment.center,
          height: height,
          width: width,
          child: label,
        ),
      ),
    );
  }
}
