


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class buildingLayoutCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('布局案例'),
      ),
      backgroundColor: Colors.white,
      body: new ListView(
        children: <Widget>[
          new Image.asset(
            'images/lake.jpg',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
          titleSection(),
          buttonSection(),
          textSection(),
        ],
      ),
    );
  }
}

/// 信息Section
class titleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    '厄希嫩湖 营地',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, 瑞士',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );
  }
}

/// 按钮Section
class buttonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return  new Container(
      child: new  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(color, Icons.call, '电话'),
          buildButtonColumn(color, Icons.near_me, '导航'),
          buildButtonColumn(color, Icons.share, '分享'),
        ],
      ),
    );
  }
}

Column buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

/// 文字Section
class textSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
        厄希嫩湖海拔有1578公尺，是一个高山湖泊。下到厄希嫩湖旁，可以看见这里的湖水是宝石绿的，被山峰所包围，湖水清澈见底，看不到一点杂质。虽然是春天了，但是山顶的白雪还在，没有完全融化，早晨来这还有白云飘在山间，雾气朦胧，随便一拍都是美景
        ''',
        softWrap: true,
      ),
    );
  }
}
