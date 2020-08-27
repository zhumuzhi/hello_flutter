import 'package:flutter/material.dart';
import 'package:hello_flutter/Other/ScreenTool.dart';

class MultiChildCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('multiChildCase')),
      body: Column(
        children: [
          _space('Row'),
          _rowCase(),
          _space('Column'),
          _columnCase()
        ],
      ),
    );
  }

  Widget _space (String title){
    return Container(
      color: Colors.grey, height: 20, width: KScreen.width(),
      child: Center(child: Text('$title')),
    );
  }

  Widget _rowCase() {
    return Row(
      children: <Widget>[
        Container(color: Colors.yellow, width: 60, height: 80),
        Container(color: Colors.red, width: 100, height: 180),
        Container(color: Colors.black, width: 60, height: 80),
        Container(color: Colors.green, width: 60, height: 80),
      ],
    );
  }

  Widget _columnCase() {
    return Column(
      children: [
        Container(color: Colors.yellow, width: 60, height: 80),
        Container(color: Colors.red, width: 100, height: 180),
        Container(color: Colors.black, width: 60, height: 80),
        Container(color: Colors.green, width: 60, height: 80),
      ],
    );
  }
}
