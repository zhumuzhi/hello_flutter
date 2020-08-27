import 'package:flutter/material.dart';

class MultiChildCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('multiChildCase')),
      body: Container(
          child: _rowCase(),
      ),
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



}




