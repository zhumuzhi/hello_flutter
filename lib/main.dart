import 'package:flutter/material.dart';

import 'package:hello_flutter/BottomNavigation/BottomNavigationBar.dart';
import 'package:hello_flutter/Home/HomePage.dart';
import 'package:hello_flutter/Router/RouterPath.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabsPage(),
    );
  }
}

//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        centerTitle: true,
//        title: new Text('Flutter Practice'),
//      ),
//      body: _separatedListView(),
//    );
//  }
//}
//
//class _normalListView  extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//      child: new ListView(
//        children: <Widget>[
//          ListTile(leading: Icon(Icons.map), title: Text('Map')),
//          ListTile(leading: Icon(Icons.mail), title: Text('Mail')),
//          ListTile(leading: Icon(Icons.message), title: Text('Message')),
//        ],
//      ),
//    );
//  }
//}
//
//class _horizontalListView extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//      child: new ListView(
//        scrollDirection: Axis.horizontal,
//        itemExtent: 140, //item????????
//        children: [
//          Container(color: Colors.green),
//          Container(color: Colors.red),
//          Container(color: Colors.blue),
//          Container(color: Colors.yellow),
//          Container(color: Colors.orangeAccent),
//        ],
//      ),
//    );
//  }
//}
//
//class _buildListView extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//      child: new ListView.builder(
//          itemCount: 100, // ????
//          itemExtent: 50.0, // ?????
//          itemBuilder: (BuildContext context, int index) => ListTile(
//              title: Text("title $index"), subtitle: Text("body $index"))),
//    );
//  }
//}
//
//class _separatedListView extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: ListView.separated(
//        itemCount: 100,
//        separatorBuilder: (BuildContext context, int index) => index % 2 == 0
//            ? Divider(color: Colors.green)
//            : Divider(color: Colors.red),
//        itemBuilder: (BuildContext context, int index) => ListTile(
//            title: Text("title $index"), subtitle: Text("body $index")),
//      ),
//    );
//  }
//}

//void main() => runApp(_ruterTo(router));
//Widget _ruterTo(String routername) => MaterialApp(home: _router(name: routername));
//Widget _router({String name}) => routerWidget(router: name);
