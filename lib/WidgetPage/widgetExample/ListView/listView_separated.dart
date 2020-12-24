/// Created by ZhuMZ
/// Created on 12/18/20
/// page listView_separated
/// desc ListView separated案例

import 'package:flutter/material.dart';

class ListViewSeparatedClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(
      color: Colors.blue,
    );
    Widget divider2 = Divider(color: Colors.green);

    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.separated'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('$index'),
          );
        },
        separatorBuilder: (BuildContext context, int index){
          return index%2==0 ? divider1 : divider2;
        },
        itemCount: 30,
      ),
    );
  }
}
