import 'package:flutter/material.dart';

import 'package:hello_flutter/Router/routeConfigure.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteConfigure.tabBarPage,
      onGenerateRoute: (settings) => RouteConfigure.routeConfigureHandler(settings),
      onUnknownRoute: (RouteSettings setting) => MaterialPageRoute(builder: (context) => NoRoute()),
    );
  }
}

