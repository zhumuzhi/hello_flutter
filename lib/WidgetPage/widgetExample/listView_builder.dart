/// Created by ZhuMZ
/// Created on 12/18/20
/// page listView_builder
/// desc ListView builder案例

import 'package:flutter/material.dart';

class ListViewBuilderClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final numItems = 20;
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewBuilder'),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(16),
          itemCount: 20,
          // physics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            // if(index.isOdd) return Divider();
            // final i = index ~/2 + 1;
            return _buildRow(index);
          }),
    );
  }

  Widget _buildRow(int index) {
    return ListTile(
      leading: CircleAvatar(
        child: Text('$index'),
      ),
      title: Text(
        '$index',
        style: TextStyle(fontSize: 18.0),
      ),
      trailing: Icon(Icons.dashboard),
    );
  }
}
