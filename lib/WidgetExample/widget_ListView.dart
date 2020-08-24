import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ListViewWidget extends StatelessWidget {
  final String title;

  ListViewWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        body: TabBarView(
          children: [
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
                text: "视差",
              ),
            ]),
      ),
    );
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


