import 'package:flutter/material.dart';
import 'package:hello_flutter/BottomNavigation/BottomNavigationBar.dart';

void main() {

  var p = new Point(100, 200); // new ???????
  p.printInfo(); // ???100?200?;
  Point.factor = 10;
  Point.printZValue(); // ??10

}

class Point {
  // ???-????0
  static num factor = 0;
  // ????
  num x, y;
  // ??????????????(?????????????this.x = x; this.y = y;)
  Point(this.x, this.y);
  // ????
  void printInfo() => print('$x, $y');
  // ???
  static void printZValue() => print('factor'); //???
}




//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabsPage(),
    );
  }
}

