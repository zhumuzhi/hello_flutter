import 'package:flutter/material.dart';
import 'package:hello_flutter/Router/RouterPath.dart';

// import 'package:hello_flutter/hf_home/layoutCase/buildingLayoutPage.dart';
import 'package:hello_flutter/hf_home/layoutCase/pavlovaLayoutPage.dart';
import 'package:hello_flutter/hf_home/layoutCase/containerLayoutPage.dart';
import 'package:hello_flutter/hf_home/layoutCase/gridLayoutPage.dart';
import 'package:hello_flutter/hf_home/layoutCase/listViewLayoutPage.dart';
import 'package:hello_flutter/hf_home/layoutCase/stackLayoutPage.dart';
import 'package:hello_flutter/hf_home/layoutCase/cardLayoutPage.dart';
import 'package:hello_flutter/hf_examplePage/sampleExample/AnimatedListSample.dart';

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
        title: Text('首页'),
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

            Navigator.pushNamed(context, buildLayout_page);

            // Navigator.push(
            //   context,
            //   new MaterialPageRoute(
            //       builder: (context) => new BuildingLayoutCase()),
            // );
          }

          if ('$title'.toString() == 'Pavlova') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new PavlovaLayoutPage()));
          }

          if ('$title'.toString() == 'containerCase') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new ContainerLayoutPage()));
          }

          if ('$title'.toString() == 'gridLayoutCase') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new GridLayoutPage()));
          }

          if ('$title'.toString() == 'listViewCase') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new ListViewPage()));
          }

          if ('$title'.toString() == 'stackCase') {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new StackLayoutPage()));
          }

          if ('$title'.toString() == 'cardLayoutCase') {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new CardLayoutPage()));
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