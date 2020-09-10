import 'package:flutter/material.dart';

class DataTransferCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 34),
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: TabBarView(
              children: [
                CounterPage(),
                NotificationCase(),
                Container(child: Text("EventBus")),
              ],
            ),
            bottomNavigationBar: TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.red,
                indicatorColor: Colors.cyanAccent,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                    text: "Inherited",
                  ),
                  Tab(
                    icon: Icon(Icons.rss_feed),
                    text: "Notification",
                  ),
                  Tab(
                    icon: Icon(Icons.rv_hookup),
                    text: "EventBus",
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}


/// ============== Inherited ==============

/// CounterPage

class CounterPage extends StatefulWidget {

  CounterPage({Key key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int count = 0;

  void _incrementCounter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CountContainer(count: 0, child: Counter()
    );
  }

}

/// CountContainer

class CountContainer extends InheritedWidget {
  //方便其子Widget在Widget树中找到它
  static CountContainer of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(CountContainer) as CountContainer;
  }

  final int count;

  CountContainer({
    Key key,
    @required this.count,
    @required Widget child,
  }): super(key: key, child: child);

  // 判断是否需要更新
  @override
  bool updateShouldNotify(CountContainer oldWidget) {
    return count != oldWidget.count;
  }
}

/// Counter

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //获取InheritedWidget节点
    CountContainer state = CountContainer.of(context);
    return Scaffold(
      appBar: AppBar(title: Text("InheritedWidget demo")),
      body: Text(
        "You have pushed the button this many times: ${state.count}",
      ),
    );
  }
}



/// ============== Notification ==============

class NotificationCase extends StatefulWidget {
  @override
  _NotificationCaseState createState() => _NotificationCaseState();
}

class _NotificationCaseState extends State<NotificationCase> {
  String _msg = "通知";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NotificationCase")),
      body: Container(
        child: NotificationListener<CustomNotification>(
          onNotification: (notification) {
            setState(() {
              _msg += notification.msg + " ";
            });
          },
          child: Container(
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text(_msg,style: TextStyle(color: Colors.white),), CustomChild()],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomNotification extends Notification {
  final String msg;
  CustomNotification(this.msg);
}

class CustomChild extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: ()=> CustomNotification("Hi").dispatch(context),
      child: Text("Fire Notification"),
    );
  }

}









/// ============== EventBus ==============








