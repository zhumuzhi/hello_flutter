import 'package:flutter/material.dart';
import 'package:hello_flutter/Support/utils/screen_utils.dart';

class MultiChildCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('multiChild—Widget-示例')),
      body: ListView(
        children: [
          _space('Row'),
          _mainRowCase(),
          _space('Column'),
          _columnCase(),
          _space('到底了'),
        ],
      ),
    );
  }

  Widget _mainRowCase () {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(color: Colors.yellow, width: 60, height: 80),
        Container(color: Colors.red, width: 100, height: 180),
        Container(color: Colors.black, width: 60, height: 80),
        Container(color: Colors.green, width: 60, height: 80),
      ],
    );
  }


  Widget _space(String title) {
    return Container(
      color: Colors.grey,
      height: 20,
      width: KScreen.width(),
      child: Center(child: Text('$title')),
    );
  }

  Widget _rowCase() {
    return Row(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: Container(color: Colors.yellow, width: 60, height: 80)),
        Container(color: Colors.red, width: 100, height: 180),
        Container(color: Colors.black, width: 60, height: 80),
        Expanded(
            flex: 1,
            child: Container(color: Colors.green, width: 60, height: 80)),
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
