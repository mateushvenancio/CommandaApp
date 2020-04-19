import 'package:commandaapp/model/menu_item.dart';
import 'package:flutter/material.dart';

class MenuTile extends StatefulWidget {
  final MenuItem menuItem;

  const MenuTile(this.menuItem);

  @override
  _MenuTileState createState() => _MenuTileState();
}

class _MenuTileState extends State<MenuTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 75,
      child: Row(
        children: <Widget>[
          // foto do prato
          Container(
            height: 75,
            width: 75,
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(99999),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(99999),
                child: Image.network(
                  widget.menuItem.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          SizedBox(width: 10),

          // preço
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  '${widget.menuItem.title}',
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
                Text(
                  '${widget.menuItem.cookingTime}m - '
                  "${widget.menuItem.mediaRate()} ⭐",
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),

          // nome, tempo de preparo, rate
          Text(
            'R\$ ${widget.menuItem.price.toStringAsFixed(2)}',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
