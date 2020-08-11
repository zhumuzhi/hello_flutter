


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class buildingLayoutCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    body: new ListView(
      children: <Widget>[
        new Image.asset(
          'image/lake.jpg',
          width: 600.0,
          height: 240.0,
          fit: BoxFit.cover,
        ),

      ],
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
                  'Kandersteg, Switzerland',
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
    return  new Container(
      child: new  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE')
        ],
      ),
    );
  }
}

Column buildButtonColumn(IconData icon, String label) {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Icon(icon, color: color),
        new Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: new Text(
            label,
            style: new TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
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
