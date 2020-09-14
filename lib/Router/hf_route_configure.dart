import 'package:flutter/material.dart';

import 'package:hello_flutter/hf_home/layoutCase/buildingLayoutCase.dart';
import 'package:hello_flutter/hf_home/layoutCase/pavlovaLayoutCase.dart';
import 'package:hello_flutter/hf_home/layoutCase/containerLayoutCase.dart';
import 'package:hello_flutter/hf_home/layoutCase/gridLayoutCase.dart';
import 'package:hello_flutter/hf_home/layoutCase/listViewLayoutCase.dart';
import 'package:hello_flutter/hf_home/layoutCase/stackLayoutCase.dart';
import 'package:hello_flutter/hf_home/layoutCase/cardLayoutCase.dart';
import 'package:hello_flutter/hf_examplePage/sampleExample/AnimatedListSample.dart';

enum HFPageRouteType {
  fade,
  rightToLeft,
  leftToRight,
  upToDown,
  downToUp,
  scale,
  rotate,
  size,
  rightToLeftWithFade,
  leftToRightWithFade,
  cupertino,
  none,
}

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
    buildLayoutPage: (arguments) => HFRouteResult(widget: BuildingLayoutCase())

// cardLayoutPage
// containerPage
// gridLayoutPage
// listViewPage
// pavlovaCasePage
// stackLayoutPage

  };
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
