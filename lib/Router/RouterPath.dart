
import 'package:flutter/material.dart';
import 'package:hello_flutter/Home/HomePage.dart';
import 'package:hello_flutter/ExamplePage/ExamplePage.dart';

/// 环境
final String router = tab_page;

/// 路由定义
// tab页
const tab_page = 'router_flag_tabbar';
// 首页
const home_page = 'router_flag_homepage';
// 案例页面
const example_page = 'router_flag_examplepage';

/// 路由Widget
Widget routerWidget({String router}) {

  print('router path =' + router);

  switch (router) {
    case home_page:
      return HomePage();
    case example_page:
      return ExamplePage();
    default:
      return Scaffold(
          body: Center(
              child: Text('please check your router\nin module/lib/router/RouterPath.dart\ncheck the variable isHybrid'),
          ),
      );
  }

}