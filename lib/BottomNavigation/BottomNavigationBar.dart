import 'package:flutter/material.dart';

import 'package:hello_flutter/Home/HomePage.dart';
import 'package:hello_flutter/ExamplePage/ExamplePage.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _TabsPageState();
  }
}

class _TabsPageState extends State<TabsPage> {

  int currentIndex = 0;
  List listTabs = [
    HomePage(),
    ExamplePage(),
  ];

  static var tabs = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
    BottomNavigationBarItem(icon: Icon(Icons.category), title: Text('案例')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.listTabs[this.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.currentIndex,
        iconSize: 30.0,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            this.currentIndex = index;
          });
        },
        items: tabs,
      ),
    );
  }
}
