import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  final String title;

  ListViewWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          children: [
            ParallelWidget(),
            ScrollNotificationWidget(),
            ScrollControllerWidget()
          ],
        ),
        bottomNavigationBar: TabBar(
            unselectedLabelColor: Colors.blueGrey,
            labelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.red,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "CustomScrollView",
              ),
              Tab(
                icon: Icon(Icons.rss_feed),
                text: "Notification",
              ),
              Tab(
                icon: Icon(Icons.perm_identity),
                text: "Controller",
              )
            ]),
      ),
    );
  }
}

class ParallelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        //SliverAppBar 作为头图控件
        automaticallyImplyLeading: true,
        title: Text('CustomScrollView Demo'),
        // 标题
        floating: true,
        // 设置悬浮样式
        flexibleSpace: Image.network(
            "https://media-cdn.tripadvisor.com/media/photo-s/13/98/8f/c2/great-wall-hiking-tours.jpg",
            fit: BoxFit.cover),
        // 设置悬浮头图背景
        expandedHeight: 280, // 头图控件高度
      ),
      SliverList(
        //SliverList 作为列表控件
        delegate: SliverChildBuilderDelegate(
          (context, index) => ListTile(title: Text('Item #$index')),
          // 列表项创建方法
          childCount: 100, // 列表元素个数
        ),
      ),
    ]);
  }
}

class ScrollNotificationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Scroll Notification Demo',
        home: Scaffold(
            appBar: AppBar(title: Text('ScrollController Demo')),
            body: NotificationListener<ScrollNotification>(
              // 添加 NotificationListener 作为父容器
              onNotification: (scrollNotification) {
                // 注册通知回调
                if (scrollNotification is ScrollStartNotification) {
                  // 滚动开始
                  print('Scroll Start');
                } else if (scrollNotification is ScrollUpdateNotification) {
                  // 滚动位置更新
                  print('Scroll Update');
                } else if (scrollNotification is ScrollEndNotification) {
                  // 滚动结束
                  print('Scroll End');
                }
                return true;
              },
              child: ListView.builder(
                itemCount: 30, // 列表元素个数
                itemBuilder: (context, index) =>
                    ListTile(title: Text("Index : $index")), // 列表项创建方法
              ),
            )));
  }
}

class ScrollControllerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScrollControllerState();
}

class _ScrollControllerState extends State<ScrollControllerWidget> {
  ScrollController _controller; //ListView控制器
  bool isToTop = false; // 标示目前是否需要启用"Top"按钮

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(() {
      if (_controller.offset > 1000) {
        setState(() {
          isToTop = true;
        });
      } else if (_controller.offset < 300) {
        setState(() {
          isToTop = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scroll Controller Widget")),
      body: Column(
        children: [
          Container(
            height: 40.0,
            child: RaisedButton(
              onPressed: (isToTop
                  ? () {
                      if (isToTop) {
                        _controller.animateTo(.0,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.ease); // 做一个滚动到顶部的动画
                      }
                    }
                  : null),
              child: Text("Top"),
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: _controller, //  初始化传入控制器
              itemCount: 100, // 列表元素总数
              itemBuilder: (context, index) =>
                  ListTile(title: Text("Index:$index")), // 列表项构造方法
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose(); // 销毁控制器
    super.dispose();
  }
}
