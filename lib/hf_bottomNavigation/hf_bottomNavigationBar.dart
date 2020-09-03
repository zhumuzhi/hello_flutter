import 'package:flutter/material.dart';

import 'package:hello_flutter/hf_home/hf_homePage.dart';
import 'package:hello_flutter/hf_examplePage/hf_examplePage.dart';
import 'package:hello_flutter/hf_widget/hf_widgetPage.dart';

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
    WidgetList()
  ];

  static var tabs = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
    BottomNavigationBarItem(icon: Icon(Icons.category), title: Text('案例')),
    BottomNavigationBarItem(icon: Icon(Icons.dialpad), title: Text('Widget')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.listTabs[this.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.currentIndex,
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
