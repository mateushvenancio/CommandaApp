import 'package:commandaapp/app/tiles/category_tile.dart';
import 'package:commandaapp/model/category.dart';
import 'package:flutter/material.dart';

class ListCategory extends StatefulWidget {
  final List<Category> categories;

  const ListCategory({Key key, this.categories}) : super(key: key);

  @override
  _ListCategoryState createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (context, index) {
          return CategoryTile(
            category: widget.categories[index],
            onTap: () {},
          );
        },
      ),
    );
  }
}
