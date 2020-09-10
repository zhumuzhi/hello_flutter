
import 'package:flutter/material.dart';

/// TabBar案例

class TabBarCase extends StatefulWidget {
  @override
  _TabBarCaseState createState() => _TabBarCaseState();
}

class _TabBarCaseState extends State<TabBarCase> {

  final List<String> _tabValues = [
    '语文',
    '数学',
    '英语',
  ];

  TabController _controlller;

  @override
  void initState() {
    super.initState();
    _controlller = TabController(length: _tabValues.length, vsync: ScrollableState());

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar'),
        bottom: TabBar(
          tabs:_tabValues.map((e) {
            return Text(e);
          }).toList(),
          controller: _controlller,
          indicatorColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.tab,
          isScrollable: true,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.black,
          indicatorWeight: 4.0,
          labelStyle: TextStyle(height: 2),
        ),
      ),

      body: TabBarView(
        controller: _controlller,
        children: _tabValues.map((e) {
          return Center(
            child: Text(e),
          );
        }).toList(),
      ),

    );
  }
}



