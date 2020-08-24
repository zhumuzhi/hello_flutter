
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('WidgetList')),
      body: ListView(
        children: [
          ListTile(title: Text('ListWidget')),
        ],

      ),
    );
  }

}