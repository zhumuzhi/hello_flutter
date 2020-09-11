import 'package:flutter/material.dart';

import 'package:hello_flutter/hf_examplePage/sampleExample/AppBarBottomSample.dart';
import 'package:hello_flutter/hf_examplePage/sampleExample/BaseAppBarSample.dart';
import 'package:hello_flutter/hf_examplePage/sampleExample/ExpansionTileSample.dart';
import 'package:hello_flutter/hf_examplePage/sampleExample/TabbedAppBarSample.dart';
import 'package:hello_flutter/hf_examplePage/sampleExample/InteractionSample.dart';

import 'package:hello_flutter/hf_examplePage/sampleExample/Example_LoginPage.dart';

class ExamplePage extends StatefulWidget {
  @override
  createState() => _ExamplePageState();
}

/// 模块对象
class Entry {
  Entry(this.title);

  final String title;
}

/// 首页ListView
class _ExamplePageState extends State<ExamplePage> {
  final List<String> entries = <String>[
    'AppBarBottomSample',
    'BaseAppBarSample',
    'ExpansionTileSample',
    'TabbedAppBarSample',
    'InteractionSample',
    'LoginPage',

  ];
  final List<int> colorCodes = <int>[
    100,
    200,
    300,
    400,
    500,
    600
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

          if ('$title'.toString() == 'TabbedAppBarSample') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new TabbedAppBarSample()));
          }

          if ('$title'.toString() == 'InteractionSample') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new TapboxASample()));
          }

          if ('$title'.toString() == 'LoginPage') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new LoginPage()));
          }

        },
      ),
    );
  }
}
