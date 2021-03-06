/// Created by ZhuMZ
/// Created on 2021/03/09
/// page HomePage
/// desc 示例-页面

import 'package:flutter/material.dart';

import 'package:hello_flutter/Router/routeConfigure.dart';

import 'package:hello_flutter/ExamplePage/sampleExample/AnimatedListSample.dart';

// 【首页】调整为【示例】页面
class HomePage extends StatefulWidget {
  @override
  createState() => _MyHomePageState();
}

/// 模块对象
class Entry {
  Entry(this.title);
  final String title;
}

/// 首页ListView
class _MyHomePageState extends State<HomePage> {

  final List<String> entries = <String>[
    'Oeschinen',
    'Pavlova',
    'containerCase',
    'gridLayoutCase',
    'listViewCase',
    'stackCase',
    'cardLayoutCase',
    'animatedListCase',
  ];

  final List<int> colorCodes = <int>[
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('示例'),
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

/// ListItem

class ListItem extends StatelessWidget {
  final int colorValue;
  final String title;
  const ListItem({Key key, this.colorValue, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 50,
      color: Colors.amber[colorValue],
      child: new ListTile(
        title: new Text('$title'),
        onTap: () {
          if ('$title'.toString() == 'Oeschinen') {
            Navigator.pushNamed(context, RouteConfigure.layoutPage);
            // Navigator.push(
            //   context,
            //   new MaterialPageRoute(
            //       builder: (context) => new BuildingLayoutCase()),
            // );
          }

          if ('$title'.toString() == 'Pavlova') {
            Navigator.pushNamed(context, RouteConfigure.pavlovaCasePage);
          }

          if ('$title'.toString() == 'containerCase') {
            Navigator.pushNamed(context, RouteConfigure.containerPage);
          }

          if ('$title'.toString() == 'gridLayoutCase') {
            Navigator.pushNamed(context, RouteConfigure.gridLayoutPage);
          }

          if ('$title'.toString() == 'listViewCase') {
            Navigator.pushNamed(context, RouteConfigure.listViewPage);
          }

          if ('$title'.toString() == 'stackCase') {
            Navigator.pushNamed(context, RouteConfigure.stackLayoutPage);
          }

          if ('$title'.toString() == 'cardLayoutCase') {
            Navigator.pushNamed(context, RouteConfigure.cardLayoutPage);
          }

          if ('$title'.toString() == 'animatedListCase') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new AnimatedListSample()));
          }

        },
      ),
    );
  }
}