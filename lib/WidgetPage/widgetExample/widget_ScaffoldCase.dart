import 'package:flutter/material.dart';

class ScaffoldCase extends StatefulWidget {
  @override
  _ScaffoldCaseState createState() => _ScaffoldCaseState();
}

class _ScaffoldCaseState extends State<ScaffoldCase> with SingleTickerProviderStateMixin{

  int _currentBottomIndex = 0; // 底部tab索引
  TabController _tabController;
  List<String> topTabLists = ["Tab 1", "Tab 2",'Tab 3 '];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: topTabLists.length, vsync: this);
  }

  void _onBottomTabChange(int index) {
    setState(() {
      _currentBottomIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        /// 应用栏
        appBar: AppBar(
          // backgroundColor: Colors.red,
          title: Text('标题', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          elevation: 10.0,

          // 左侧按钮
          leading: GestureDetector(child: Icon(Icons.backspace), onTap: (){
            print('点击左侧定义按钮');
            Navigator.pop(context);
          },),

          // 右侧按钮
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.message),
                onPressed: () {
                  print('点击右侧自定按钮1');
                }),
            IconButton(
                icon: Icon(Icons.access_alarm),
                onPressed: () {
                  print('点击右侧自定按钮2');
                }),
            PopupMenuButton(
              onSelected: (String value) {
                print("----------$value");
              },
              itemBuilder: (BuildContext context) => [
                new PopupMenuItem(value: "选项一的内容", child: new Text("选项一")),
                new PopupMenuItem(value: "选项二的内容", child: new Text("选项二")),
                new PopupMenuItem(value: "选项三的内容", child: new Text("选项三")),
              ],
            )
          ],

          //标题下内容
          bottom: TabBar(
            controller: _tabController,
            tabs: topTabLists
            .map((e) => Tab(
              text: e,
              icon: Icon(Icons.print),
            )).toList(),
          ),
        ),

        /// 侧边栏
        endDrawer: MyDrawer(),

        /// 内容区域
        body: TabBarView(
          controller: _tabController,
          children: topTabLists.map((item) {
            return Container(
              alignment: Alignment.center,
              child: Text(item),
            );
          }).toList(),
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
          //不设置该属性多于三个不显示颜色
          type: BottomNavigationBarType.fixed,
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
          currentIndex: _currentBottomIndex,
          fixedColor: Colors.redAccent,
          onTap: (index) => _onBottomTabChange(index),
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


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 88.0, bottom: 30.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image(image: AssetImage("assets/images/google.png"),width: 60,),
                    ),
                  ),
                  Text(
                    "抽屉栏",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('个人设置'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.live_help),
                    title: const Text('帮助说明'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('个人设置'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.live_help),
                    title: const Text('帮助说明'),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}