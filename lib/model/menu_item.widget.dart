import 'package:commandaapp/model/menu_item.model.dart';
import 'package:flutter/material.dart';

class MenuItemTile extends StatelessWidget {
  final MenuItem menuItem;

  const MenuItemTile(this.menuItem);

  @override
  Widget build(BuildContext context) {
    var _borderRadius = BorderRadius.only(
      topLeft: Radius.circular(5),
      topRight: Radius.circular(5),
      bottomLeft: Radius.circular(5),
      bottomRight: Radius.circular(15),
    );

    return Material(
      borderRadius: _borderRadius,
      elevation: 5,
      child: Container(
        height: 100,
        width: 65,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 10,
              left: 10,
              child: Text('discount'),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Text('title'),
            ),
          ],
        ),
      ),
    );
  }
}
