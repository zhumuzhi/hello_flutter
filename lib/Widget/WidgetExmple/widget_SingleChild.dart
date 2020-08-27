
import 'package:flutter/material.dart';


class SingleChildCase extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container示例'),
      ),
      body: _centerCase(),
    );
  }

  Widget _containerCase(){
    return Container(
      child: Text('Container（容器）在UI框架中是一个很常见的概念，Flutter也不例外。'),
      padding: EdgeInsets.all(18.0),
      // 内边距
      margin: EdgeInsets.all(44.0),
      // 外边距
      width: 180.0,
      height: 240,
      alignment: Alignment.center,
      // 子Widget居中对齐
      decoration: BoxDecoration(
        //Container样式
        color: Colors.red, // 背景色
        borderRadius: BorderRadius.circular(10.0), // 圆角边框
      ),
    );
  }

  Widget _paddingCase() {
    return Padding(
      padding: EdgeInsets.all(44.0),
      child: Text('如果我们只需要将子 Widget 设定间距，则可以使用另一个单子容器控件 Padding 进行内容填充'),
    );
  }

  Widget _centerCase() {
    return Container(
      child: Center(child: Text('Center（容器）在UI框架中是一个很常见的概念，Flutter也不例外。')),
      padding: EdgeInsets.all(18.0), // 内边距
      margin: EdgeInsets.all(44.0), // 外边距
      width: 180.0,
      height:240,
      decoration: BoxDecoration( //Container样式
        color: Colors.red, // 背景色
        borderRadius: BorderRadius.circular(10.0), // 圆角边框
      ),
    );
  }
}


