import 'package:flutter/material.dart';

import 'package:hello_flutter/Home/HomePage.dart';
import 'package:hello_flutter/ExamplePage/ExamplePage.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),

      home: Scaffold(
        body: RooterPage(),
      ),
    );
  }
}

class RooterPage extends StatefulWidget {
  @override
  createState() => new RooterPageState();
}

class RooterPageState extends State<RooterPage> with TickerProviderStateMixin {

  int _currentIndex = 0;

  static var tabPages = <Widget> [
    HomePage(),
    ExamplePage(),
  ];

  static var tabs = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Homepage')),
    BottomNavigationBarItem(icon: Icon(Icons.star), title: Text('ExamplePage')),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: tabPages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: tabs,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
//            if (index !=2){
              _currentIndex = index;
//            }
          });

//          if(index == 2) {
//            Navigator.push(context, MaterialPageRoute(
////              builder: (context) => xxxPage(),
//              fullscreenDialog: true,
//            ));
//          }
        },
      ),
    );
  }

}