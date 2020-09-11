import 'package:flutter/material.dart';
import 'package:hello_flutter/Support/define/define.dart';



class RouteSample extends StatefulWidget {
  @override
  _RouteSampleState createState() => _RouteSampleState();
}

class _RouteSampleState extends State<RouteSample> with SingleTickerProviderStateMixin{

  TabController _tabController;
  List<String> tabList = ["基本路由","命名路由"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstPage'),
        bottom: TabBar(
            controller: _tabController,
            tabs: tabList
                .map((element) => Tab(
                      text: element,
                    ))
                .toList()),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          FirstPage(),
          FirstPage(),
        ],
      ),
    );
  }
}



class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
            child: Text('EventButton'),
            color: randomColor(),
            onPressed: () {
              print("跳转至下级页面");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondPage()));
            }),
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecondPage'),leading: null,),
      body: Center(
        child: RaisedButton(
            child: Text('EventButton'),
            color: randomColor(),
            onPressed: () { 
              print("返回上级页面");
              Navigator.pop(context);
            }),
      ),
    );
  }
}
