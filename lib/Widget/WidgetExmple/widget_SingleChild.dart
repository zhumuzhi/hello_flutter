
import 'package:flutter/material.dart';
import 'package:hello_flutter/Support/utils/screen_utils.dart';

class SingleChildCase extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChild-Widget-示例'),
      ),
      body: Column(
        children: [
          _space('Container'),
          _containerCase(),
          _space('Padding'),
          _paddingCase(),
          _space('Center'),
          _centerCase(),
          _space('到底了'),
        ],
      ),
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

  Widget _containerCase(){
    return Container(
//      color: Colors.amberAccent,
      child: Text('Container（容器）在UI框架中是一个很常见的概念，Flutter也不例外。'),
      padding: EdgeInsets.all(18.0),
      // 内边距
      margin: EdgeInsets.all(44.0),
      // 外边距
      width: 180.0,
      height: 150.0,
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
      child: Center(child: Text('Center在Flutter的UI框架中是一个很常见的容器。')),
      padding: EdgeInsets.all(18.0), // 内边距
      margin: EdgeInsets.all(44.0), // 外边距
      width: 180.0,
      height:150.0,
      decoration: BoxDecoration( //Container样式
        color: Colors.red, // 背景色
        borderRadius: BorderRadius.circular(10.0), // 圆角边框
      ),
    );
  }
}


