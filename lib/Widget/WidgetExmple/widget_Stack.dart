import 'package:flutter/material.dart';

class StackWidgetCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StackWidgetCase')),
      body: Container(
        child: _stackCase(),
      ),
    );
  }

  Widget _stackCase() {
    return Stack(children: [
      Container(color: Colors.yellow, width: 300, height: 300),
      //黄色容器
      Positioned(
        //叠加在黄色容器之上的绿色控件
          left: 18.0,
          top: 18.0,
          child: Container(color: Colors.green, width: 50, height: 50)),
      Positioned(left: 18.0, top: 70.0, child: Text("Stack提供了层叠布局的容器")),
      //叠加在黄色容器之上的文本
    ]);
  }
}
