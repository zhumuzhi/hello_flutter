import 'package:flutter/material.dart';

class PavlovaLayoutCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: buildPavlovalCase('Strawberry Pavlova Recipe'),
    );
  }

  Widget  buildPavlovalCase(String title) {
    final titleText = Container(
      padding: EdgeInsets.all(20),
      child: Text(
        '草莓Pavloval蛋糕',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );

    final subTitle = Text(
      'Pavloval（帕夫洛娃）是一种甜点，由一个奶油酥皮蛋糕组成，以俄罗斯芭蕾舞演员安娜·巴甫洛娃（帕夫洛娃）的名字命名的。Pavloval（帕夫洛娃）的特点是外壳酥脆，里面柔软轻盈。上面淋上水果和生奶油',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Geogia',
        fontSize: 25,
      ),
    );

    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          stars,
          Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
    
    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );
    
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.kitchen, color: Colors.green[500],),
                Text('PREP'),
                Text('25 min'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.kitchen, color: Colors.green[500],),
                Text('COOK'),
                Text('1 hr'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.kitchen, color: Colors.green[500],),
                Text('FEEDS'),
                Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    final leftColumn = Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: <Widget>[
          titleText,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );

    final mianImage = Image.asset(
      'assets/images/pavlova.jpg',
      width: 600.0,
      height: 240.0,
      fit: BoxFit.cover,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 400,
                  child: leftColumn,
                ),
                mianImage,
              ],
            ),
          ),
        ),
      ),
    );

  }
}


