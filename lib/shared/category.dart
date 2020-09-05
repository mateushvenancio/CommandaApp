import 'package:commandaapp/models/category.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final Category model;

  CategoryTile(this.model);

  @override
  Widget build(BuildContext context) {
    var _borderRadius = BorderRadius.only(
      topLeft: Radius.circular(5),
      topRight: Radius.circular(5),
      bottomLeft: Radius.circular(5),
      bottomRight: Radius.circular(25),
    );

    var shadow = Shadow(
      color: Colors.black,
      blurRadius: 6,
      offset: Offset(0, 0),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: _borderRadius,
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            image: DecorationImage(
              image: NetworkImage(model.image),
              fit: BoxFit.cover,
            ),
          ),
          // height: 100,
          width: 100,
          child: Stack(
            children: <Widget>[
              Center(
                child: Text(
                  model.title,
                  style: TextStyle(
                    color: Colors.white,
                    shadows: [
                      shadow,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
