/// Created by ZhuMZ
/// Created on 12/29/20
/// page widget_Text
/// desc Text控件

import 'package:flutter/material.dart';

class TextWidgetClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var style = TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold, // normal:W400 、 bold:W700
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.grey[100],
          child: Text(
            'Text-Widget案例展示',
            style: style,
          ),
        ),
      ),
    );
  }
}
