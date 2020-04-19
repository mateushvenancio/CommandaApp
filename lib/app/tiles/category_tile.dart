import 'package:commandaapp/model/category.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final Category category;
  final Function onTap;

  const CategoryTile({Key key, this.category, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(9999),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(9999),
              child: Image.network(
                category.image,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            category.title,
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
            softWrap: false,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
