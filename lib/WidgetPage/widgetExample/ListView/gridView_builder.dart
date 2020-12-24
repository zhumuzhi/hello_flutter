/// Created by ZhuMZ
/// Created on 12/18/20
/// page gridView_builder
/// desc GridView builder方式使用

import 'package:flutter/material.dart';
import 'package:hello_flutter/WidgetPage/Model/widgetGroup.dart';

class GridViewBuilderClass extends StatefulWidget {
  @override
  _GridViewBuilderClassState createState() => _GridViewBuilderClassState();
}

class _GridViewBuilderClassState extends State<GridViewBuilderClass> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.builder'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Center(
            child: Card(
              child: ListTile(
                title: Text(
                  'item $index',
                  style: TextStyle(color: Colors.lightGreenAccent),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
