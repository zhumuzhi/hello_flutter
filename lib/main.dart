import 'package:flutter/material.dart';

// 商品数量属性；购物车信息增加商品列表信息（包括商品名称，数量及单价）输出，实现小票的基本功能。

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


/// 模块对象
class Entry {
  Entry(this.title);
  final String title;
}

/// 首页ListView
class _MyHomePageState extends State<MyHomePage> {

  final List<String> entries = <String>['AA','BB','CC'];
  final List<int>colorCodes = <int>[100,200,300];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('案例列表'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, index) {
          return ListItem(
            colorValue: colorCodes[index],
            title: entries[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({Key key, this.colorValue, this.title}) : super(key: key);
  final int colorValue;
  final String title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 50,
      color: Colors.amber[colorValue],
      child: Center(child: Text(title)
      ),
    );
  }
}




