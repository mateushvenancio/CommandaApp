import 'package:commandaapp/models/menu_item.dart';
import 'package:flutter/material.dart';

class MenuItemTile extends StatelessWidget {
  final MenuItem menuItem;

  const MenuItemTile(this.menuItem);

  @override
  Widget build(BuildContext context) {
    double _commonHeight = 120.0;

    var _borderRadius = BorderRadius.only(
      topLeft: Radius.circular(5),
      topRight: Radius.circular(5),
      bottomLeft: Radius.circular(5),
      bottomRight: Radius.circular(5),
    );

    var _commonPadding = EdgeInsets.all(5);

    return Container(
      padding: EdgeInsets.all(10),
      height: _commonHeight,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Padding(
            padding: _commonPadding,
            child: Material(
              elevation: 5,
              borderRadius: _borderRadius,
              child: Container(
                height: _commonHeight,
                width: _commonHeight,
                decoration: BoxDecoration(
                  borderRadius: _borderRadius,
                  image: DecorationImage(
                    image: NetworkImage(menuItem.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(color: Colors.blue),
          ),
          Padding(
            padding: _commonPadding,
            child: IconButton(icon: Icon(Icons.add), onPressed: () {}),
          )
        ],
      ),
    );
  }
}
