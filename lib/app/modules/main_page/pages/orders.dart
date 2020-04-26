import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commandaapp/app/tiles/category_tile.dart';
import 'package:commandaapp/model/category.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        initialData: [],
        stream: Firestore.instance
            .collection('store')
            .document('KJNSkSxyTyLXKwCV6jD6')
            .collection('category')
            .snapshots(),
        builder: (context, snapshot) {
          Category category = Category.fromJson(snapshot.data);
          //
          return CategoryTile(
            category: category,
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
