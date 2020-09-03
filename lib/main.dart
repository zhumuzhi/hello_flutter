import 'package:flutter/material.dart';
import 'package:hello_flutter/hf_bottomNavigation/BottomNavigationBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabsPage(),
    );
  }
}


