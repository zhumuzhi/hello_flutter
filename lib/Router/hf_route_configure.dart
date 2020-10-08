import 'package:flutter/material.dart';

import 'package:hello_flutter/hf_home/layoutCase/buildingLayoutPage.dart';
import 'package:hello_flutter/hf_home/layoutCase/pavlovaLayoutPage.dart';
import 'package:hello_flutter/hf_home/layoutCase/containerLayoutPage.dart';
import 'package:hello_flutter/hf_home/layoutCase/gridLayoutPage.dart';
import 'package:hello_flutter/hf_home/layoutCase/listViewLayoutPage.dart';
import 'package:hello_flutter/hf_home/layoutCase/stackLayoutPage.dart';
import 'package:hello_flutter/hf_home/layoutCase/cardLayoutPage.dart';
import 'package:hello_flutter/Router/hf_custom_router.dart';


typedef HFRouteResultBuilder = HFRouteResult Function(Object);

class HFAppRouteConfigure {
  /// ========== 首页页面 ==========

// Build布局
  static String buildLayoutPage = "router_flag_buildLayout";

// Card布局
  static String cardLayoutPage = "router_flag_cardLayout";

// Container布局
  static String containerPage = "router_flag_container";

// GridLayout布局
  static String gridLayoutPage = "router_flag_gridLayout";

// ListView布局
  static String listViewPage = "router_flag_listView";

// pavlovaCase
  static String pavlovaCasePage = "router_flag_pavlovaCase";

// StackLayout布局
  static String stackLayoutPage = "router_flag_stackLayout";

  //统一路由配置
  static Map<String, HFRouteResultBuilder> routeMap = {
    buildLayoutPage: (arguments) => HFRouteResult(widget: BuildingLayoutPage()),
    cardLayoutPage: (arguments) => HFRouteResult(widget: CardLayoutPage()),
    containerPage: (arguments) => HFRouteResult(widget: ContainerLayoutPage()),
    gridLayoutPage: (arguments) => HFRouteResult(widget: GridLayoutPage()),
    listViewPage: (arguments) => HFRouteResult(widget: ListViewPage()),
    pavlovaCasePage: (arguments) => HFRouteResult(widget: PavlovaLayoutPage()),
    stackLayoutPage: (arguments) => HFRouteResult(widget: StackLayoutPage()),
  };

  static Route routeConfigureHandler(RouteSettings routeSettings) {

    HFRouteResult routeResult = routeMap[routeSettings.name](routeSettings.arguments);

    HFRouteSettings newRouteSettings = HFRouteSettings(
      arguments: routeSettings.arguments,
      name: routeSettings.name,
      title: routeResult.title,
      routeName: routeResult.routeName,
      showStatusBar: routeResult.showStatusBar,
    );

    Widget page = routeResult.widget ?? NoRoute();

    return  HFCustomPageRoute(
      settings: newRouteSettings,
      page: page,
      title: newRouteSettings.title,
      transition: routeResult.pageRouteType,
      opaque: false,
      transitionDuration: routeResult.pageRouteType == HFPageRouteType.downToUp ? Duration(milliseconds: 300) : Duration(milliseconds: 400),
      popGesture: (routeResult.pageRouteType == HFPageRouteType.cupertino || routeResult.pageRouteType == HFPageRouteType.rightToLeft) ? true : false,
        fullscreenDialog: routeResult.pageRouteType == HFPageRouteType.downToUp

    );

  }


}


class HFRouteResult {
  // 默认路由页面
  final Widget widget;

  //是否显示状态栏，默认显示
  final bool showStatusBar;

  // 页面对应的路由名称
  final String routeName;
  final String title;

  //页面路由类型
  final HFPageRouteType pageRouteType;

  // 页面路由描述
  final String description;

  const HFRouteResult({
    this.widget,
    this.title,
    this.showStatusBar = false,
    this.routeName = '',
    this.pageRouteType = HFPageRouteType.cupertino,
    this.description = '',
  });
}


class NoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("空路由"),
      ),
      body: Center(
        child: Container(
          child: Text("不存在此路由"),
        ),
      ),
    );
  }
}

class HFRouteSettings extends RouteSettings {
  final String routeName;
  final String title;
  final bool showStatusBar;

  const HFRouteSettings ({
    this.routeName,
    this.title,
    this.showStatusBar,
    String name,
    bool isInitialRoute = false,
    Object arguments,
  }) : super(name: name, arguments: arguments);
}
