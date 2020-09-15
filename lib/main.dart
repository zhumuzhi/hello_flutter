import 'package:flutter/material.dart';
import 'package:hello_flutter/hf_bottomNavigation/hf_bottomNavigationBar.dart';

import 'package:hello_flutter/hf_examplePage/sampleExample/Example_RouteSample.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "secondPage":(context) => SecondPage(),
        "thirdPage":(context) => ThirdPage(),
      },
      onUnknownRoute: (RouteSettings setting) => MaterialPageRoute(builder: (context) => UnknownPage()),
      home: TabsPage(),
    );
  }
}


