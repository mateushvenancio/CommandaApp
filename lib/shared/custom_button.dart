import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double width;
  final Widget label;
  final Color backgroundColor;
  final Function onTap;

  const CustomButton({
    this.height = 45,
    this.width = double.infinity,
    @required this.label,
    this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var _borderRadius = BorderRadius.circular(height / 2);

    return Material(
      borderRadius: _borderRadius,
      elevation: 2,
      child: InkWell(
        borderRadius: _borderRadius,
        onTap: () {
          if (onTap != null) onTap();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: backgroundColor ?? Theme.of(context).primaryColor,
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
