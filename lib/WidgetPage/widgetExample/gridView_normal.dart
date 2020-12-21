/// Created by ZhuMZ
/// Created on 12/18/20
/// page gridView_normal
/// desc GridView 基本使用

import 'package:flutter/material.dart';

class GridViewClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1.0, //宽高比为1:2
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        children: [
          Card(child: Icon(Icons.ac_unit)),
          Card(child: Icon(Icons.airport_shuttle)),
          Card(child: Icon(Icons.all_inclusive)),
          Card(child: Icon(Icons.beach_access)),
          Card(child: Icon(Icons.cake)),
          Card(child: Icon(Icons.free_breakfast)),
          Card(child: Icon(Icons.all_out)),
          Card(child: Icon(Icons.battery_std_outlined)),
          Card(child: Icon(Icons.beenhere_rounded)),
          Card(child: Icon(Icons.collections_outlined)),
        ],
      ),
    );
  }
}
