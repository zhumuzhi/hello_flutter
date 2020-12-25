/// Created by ZhuMZ
/// Created on 12/24/20
/// page widget_Appbar
/// desc AppBar 组件

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: Center(
        widthFactor: 100,
        heightFactor: 100,
        child: AppBar(
          title: Text('AppBar.title'),
        ),
      ),
    );
  }
}
