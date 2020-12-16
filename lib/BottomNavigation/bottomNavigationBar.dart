import 'package:flutter/material.dart';

import 'package:hello_flutter/HomePage/homePage.dart';
import 'package:hello_flutter/ExamplePage/examplePage.dart';
import 'package:hello_flutter/WidgetPage/widgetPage.dart';
import 'package:hello_flutter/OtherPage/QuickTestPage.dart';

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
    WidgetList(),
    HomePage(),
    ExamplePage(),
    QuickTestPage(),
  ];

  static var tabs = [
    BottomNavigationBarItem(icon: Icon(Icons.now_widgets), title: Text('Widget')),
    BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text('示例')),
    BottomNavigationBarItem(icon: Icon(Icons.category), title: Text('案例')),
    BottomNavigationBarItem(icon: Icon(Icons.fast_forward), title: Text('快速测试')),
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
