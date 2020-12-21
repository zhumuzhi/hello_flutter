/// Created by ZhuMZ
/// Created on 12/18/20
/// page buildView_extent
/// desc GridView extent方式使用

import 'package:flutter/material.dart';

class GridViewExtentClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView-Extent'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 2.0, // 宽高比为1:1    主行/交叉行
        children: [
          Card(child: Icon(Icons.ac_unit)),
          Card(child: Icon(Icons.airport_shuttle)),
          Card(child: Icon(Icons.all_inclusive)),
          Card(child: Icon(Icons.beach_access)),
          Card(child: Icon(Icons.cake)),
          Card(child: Icon(Icons.free_breakfast)),
        ],
      ),
    );
  }
}
