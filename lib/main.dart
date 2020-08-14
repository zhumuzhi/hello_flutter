import 'package:flutter/material.dart';

import 'package:hello_flutter/layoutCase/buildingLayoutCase.dart';
import 'package:hello_flutter/layoutCase/pavlovaLayoutCase.dart';
import 'package:hello_flutter/layoutCase/containerLayoutCase.dart';
import 'package:hello_flutter/layoutCase/gridLayoutCase.dart';
import 'package:hello_flutter/layoutCase/listViewLayoutCase.dart';
import 'package:hello_flutter/layoutCase/stackLayoutCase.dart';
import 'package:hello_flutter/layoutCase/cardLayoutCase.dart';

import 'package:hello_flutter/sampleExample/AnimatedListSample.dart';
import 'package:hello_flutter/sampleExample/AppBarBottomSample.dart';
import 'package:hello_flutter/sampleExample/BaseAppBarSample.dart';
import 'package:hello_flutter/sampleExample/ExpansionTileSample.dart';

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
  final List<String> entries = <String>[
    'Oeschinen',
    'Pavlova',
    'containerCase',
    'gridLayoutCase',
    'listViewCase',
    'stackCase',
    'cardLayoutCase',
    'animatedListCase',
    'AppBarBottomSample',
    'BaseAppBarSample',
    'ExpansionTileSample',
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
    900,
    100,
    200,
  ];

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
      child: new ListTile(
        title: new Text('$title'),
        onTap: () {
          if ('$title'.toString() == 'Oeschinen') {
            Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => new buildingLayoutCase()),
            );
          }
          if ('$title'.toString() == 'Pavlova') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new PavlovaLayoutCase()));
          }
          if ('$title'.toString() == 'containerCase') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new containerCase()));
          }
          if ('$title'.toString() == 'gridLayoutCase') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new gridLayoutCase()));
          }
          if ('$title'.toString() == 'listViewCase') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new listViewCase()));
          }
          if ('$title'.toString() == 'stackCase') {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new stackCase()));
          }
          if ('$title'.toString() == 'cardLayoutCase') {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new cardCase()));
          }
          if ('$title'.toString() == 'animatedListCase') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new AnimatedListSample()));
          }
          if ('$title'.toString() == 'AppBarBottomSample') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new AppBarBottomSample()));
          }
          if ('$title'.toString() == 'BaseAppBarSample') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new BasicAppBarSample()));
          }
          if ('$title'.toString() == 'ExpansionTileSample') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new ExpansionTileSample()));
          }
        },
      ),
    );
  }
}
