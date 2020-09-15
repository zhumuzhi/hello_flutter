import 'package:flutter/material.dart';
import 'package:hello_flutter/Support/define/define.dart';

class RouteSample extends StatefulWidget {
  @override
  _RouteSampleState createState() => _RouteSampleState();
}

class _RouteSampleState extends State<RouteSample>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<String> tabList = ["基本路由", "命名路由"];

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
          BaseRoutePage(),
          NamedRoute(),
        ],
      ),
    );
  }
}

/// ========== 基本路由 ==========

class BaseRoutePage extends StatefulWidget {
  @override
  _BaseRoutePageState createState() => _BaseRoutePageState();
}

class _BaseRoutePageState extends State<BaseRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Center(
          child: Column(children: <Widget>[
            RaisedButton(
                child: Text('基本路由'),
                color: randomColor(),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()))),
          ]),
        ),
      ),
    );
  }
}

/// ========== 命名路由 ==========

class NamedRoute extends StatefulWidget {
  @override
  _NamedRouteState createState() => _NamedRouteState();
}

class _NamedRouteState extends State<NamedRoute> {
  String _msg = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: <Widget>[
          RaisedButton(
              child: Text('命名路由'),
              color: randomColor(),
              onPressed: () => Navigator.pushNamed(context, 'secondPage')),
          RaisedButton(
              child: Text('命名路由(参数&回调)'),
              color: randomColor(),
              onPressed: () =>
                  Navigator.pushNamed(context, 'thirdPage', arguments: 'Hey')
                      .then((value) {
                    setState(() {
                      _msg = value;
                    });
                  })),
          Text('Message from Second screen: $_msg'),
          RaisedButton(
            child: Text('命名路由异常处理'),
            onPressed: () => Navigator.pushNamed(context, 'UnknownPage'),
          )
        ]),
      ),
    );
  }
}

/// ========== SecondPage ==========

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
        leading: null,
      ),
      body: Center(
        child: RaisedButton(
            child: Text('返回上级页面'),
            color: randomColor(),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}

/// ========== ThirdPage ==========

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String msg = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
      ),
      body: Column(
        children: <Widget>[
          Text('Message from first screen: $msg'),
          RaisedButton(
            child: Text('back'),
            onPressed: () => Navigator.pop(context, 'Hi'),
          )
        ],
      ),
    );
  }
}

/// ========== UnknownPage ==========

class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Unknown Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Back'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}






