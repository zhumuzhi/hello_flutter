/// Created by ZhuMZ
/// Created on 2020/12/17
/// page listView_normal
/// desc 普通ListView

import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 5),
        children: [
          SizedBox(height: 20),
          _normalWidget(),
          _listTileItem(),
          _expansionTileItem()
        ],
      ),
    );
  }

  // 颜色 转 String 方法
  String colorString(Color color) =>
      "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";


  // Container 自定Widget，不一定为
  Widget _normalWidget() {
    Color backColor = Colors.purple[400];
    return Container(
      color: backColor,
      height: 44,
      width: double.infinity,
      child: Center(
        child: Text(
          colorString(backColor),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  // ListTile 常用展示ListTile
  Widget _listTileItem() {
    return Card(
      child: ListTile(
        title: Text(
          'ListTile-Widget',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        subtitle: Text('subtitle'),
        leading: Icon(
          Icons.restaurant_menu,
          color: Colors.blue[500],
        ),
        trailing: Icon(
          Icons.arrow_right,
        ),
      ),
    );
  }

  // ExpansionTile 展开收起Tile-Widget
  Widget _expansionTileItem() {
    return Card(
      child: ExpansionTile(
        leading: Icon(Icons.alternate_email),
        title: Text(
          'ExpansionTile-Widget',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        children: [
          Card(
            child: Container(
              color: Colors.lightGreenAccent,
              width: double.infinity,
              height: 50,
              child: Text(
                'ExpansionTile.Children',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
