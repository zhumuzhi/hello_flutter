/// Created by ZhuMZ
/// Created on 12/18/20
/// page gridView_builder
/// desc GridView builder方式使用

import 'package:flutter/material.dart';

class GridViewBuilderClass extends StatefulWidget {
  @override
  _GridViewBuilderClassState createState() => _GridViewBuilderClassState();
}

class _GridViewBuilderClassState extends State<GridViewBuilderClass> {
  List<IconData> _icons = []; //保存Icon数据

  @override
  void initState() {
    super.initState();
    _retrieveIcons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView-Builder'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 1.0),
        itemBuilder: (context, index) {
          if (index == _icons.length - 1 && _icons.length < 20) {
            _retrieveIcons();
          }
          return Card(
            child: Icon(_icons[index]),
          );
        },
      ),
    );
  }

  void _retrieveIcons() {
    setState(() {
      _icons.addAll([
        Icons.ac_unit,
        Icons.airport_shuttle,
        Icons.all_inclusive,
        Icons.beach_access,
        Icons.cake,
        Icons.free_breakfast,
        Icons.calculate_rounded,
        Icons.camera_alt
      ]);
    });
  }
}
