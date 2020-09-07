import 'package:flutter/material.dart';

class ScaffoldCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        /// 应用栏
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('标题', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          elevation: 10.0,
          leading: Icon(Icons.home),
          actions: <Widget>[
            Icon(Icons.add),
          ],
          bottom: PreferredSize(
            child: Container(
              height: 50.0,
              child: Center(
                child: Text("显示在标题下面的内容"),
              ),
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
            ),
            preferredSize: Size.fromHeight(50.0),
          ),
        ),

        /// 内容区域
        body: Center(
          child: Container(
              color: Colors.grey,
              child: Text(
                '中间内容部分',
                style: TextStyle(color: Colors.red, fontSize: 36.0),
              )),
        ),

        /// 侧边栏
        drawer: Drawer(
          child: Center(
            child: Container(
              width: 150.0,
              color: Colors.orange,
              child: Text(
                '侧边栏',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
            ),
          ),
        ),

        ///底部 持久化按钮
        persistentFooterButtons: <Widget>[
          Icon(Icons.person),
          Icon(Icons.add),
          Icon(Icons.print),
          Icon(Icons.apps),
          Icon(Icons.chat),
        ],

        ///底部 导航按钮
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          fixedColor: Colors.redAccent,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('主页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('聊天'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我的'),
            ),
          ],
        ),

        ///底部 FAB按钮
        floatingActionButton: Builder(builder: (BuildContext context) {
          return FloatingActionButton(
            backgroundColor: Colors.red,
            child: Icon(Icons.add),
            onPressed: () {
              var snackbar = new SnackBar(
                content: Text('显示SnackBar'),
                backgroundColor: Colors.red,
                duration: Duration(
                  milliseconds: 1500,
                ),
                action: SnackBarAction(label: '撤销', onPressed: () {}),
              );
              Scaffold.of(context).showSnackBar(snackbar);
            },
          );
        })
    );
  }
}
