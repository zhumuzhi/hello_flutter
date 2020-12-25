/// Created by ZhuMZ
/// Created on 2020/11/30
/// page routeMange
/// desc 路由管理页面

import 'package:flutter/material.dart';

import 'package:hello_flutter/BottomNavigation/bottomNavigationBar.dart';
/// HomePage
import 'package:hello_flutter/HomePage/homeExample/buildingLayoutPage.dart';
import 'package:hello_flutter/HomePage/homeExample/cardLayoutPage.dart';
import 'package:hello_flutter/HomePage/homeExample/containerLayoutPage.dart';
import 'package:hello_flutter/HomePage/homeExample/gridLayoutPage.dart';
import 'package:hello_flutter/HomePage/homeExample/listViewLayoutPage.dart';
import 'package:hello_flutter/HomePage/homeExample/pavlovaLayoutPage.dart';
import 'package:hello_flutter/HomePage/homeExample/stackLayoutPage.dart';

/// widgetExample
import 'package:hello_flutter/WidgetPage/widgetExample/widget_BaseWidgetList.dart';
import 'package:hello_flutter/WidgetPage/widgetExample/widget_MultiChild.dart';
import 'package:hello_flutter/WidgetPage/widgetExample/widget_SingleChild.dart';
import 'package:hello_flutter/WidgetPage/widgetExample/widget_ComboWidget.dart';
import 'package:hello_flutter/WidgetPage/widgetExample/widget_InteractionSample.dart';
import 'package:hello_flutter/WidgetPage/widgetExample/widget_DataTransferCase.dart';

/// widget
import 'package:hello_flutter/WidgetPage/widgetExample/widget_AppBar.dart';

/// widget_ListView
import 'package:hello_flutter/WidgetPage/widgetExample/ListView/listView_normal.dart';
import 'package:hello_flutter/WidgetPage/widgetExample/ListView/listView_builder.dart';
import 'package:hello_flutter/WidgetPage/widgetExample/ListView/listView_separated.dart';
import 'package:hello_flutter/WidgetPage/widgetExample/ListView/gridView_builder.dart';
import 'package:hello_flutter/WidgetPage/widgetExample/ListView/gridView_extent.dart';
import 'package:hello_flutter/WidgetPage/widgetExample/ListView/gridView_normal.dart';

import 'package:hello_flutter/WidgetPage/widgetExample/ListView/listView_one.dart';

typedef RouteResultBuilder = RouteResult Function(Object);

///  RouteConfigure 类
class RouteConfigure {

  // TabBarPage
  static String tabBarPage = 'router_flag_tabBarPage';

  ///  ==== 示例 ====
  // Build布局页面
  static String layoutPage = "router_flag_buildLayout";
  // Card布局页面
  static String cardLayoutPage = "router_flag_cardLayout";
  // Container布局页面
  static String containerPage = "router_flag_container";
  // GridLayout布局页面
  static String gridLayoutPage = "router_flag_gridLayout";
  // ListView布局页面
  static String listViewPage = "router_flag_listView";
  // pavlovaCase页面
  static String pavlovaCasePage = "router_flag_pavlovaCase";
  // StackLayout布局页面
  static String stackLayoutPage = "router_flag_stackLayout";

  /// ==== Widget ====
  // 基础Widget
  static String baseWidgetList = 'router_flag_baseWidgetList';
  // MultiChild
  static String multiChild = 'router_flag_multiChild';
  // singleChild
  static String singleChild = 'router_flag_singleChild';
  // comboWidget
  static String comboWidget = 'router_flag_comboWidget';
  // interactionSample
  static String interactionSample = 'router_flag_interactionSample';
  // dataTransferCase
  static String dataTransferCase = 'router_flag_dataTransferCase';

  // AppBar
  static String appBarWidget = 'router_flag_appBarWidget';


  /// ==== ListView ====
  // ListView 基本使用
  static String listViewBase = 'router_flag_listView';
  // ListView Builder
  static String listViewBuilder = 'router_flag_listView_builder';
  // ListView Separated
  static String listViewSeparated = 'router_flag_listView_separated';
  // GridView
  static String gridViewWidget = 'router_flag_gridView';
  // GridView builder
  static String gridViewBuilder = 'router_flag_gridView_builder';
  // GridView extent
  static String gridViewExtent = 'router_flag_listView_extent';

  static String listViewOne = 'router_flag_listView_one';


  ///routesMap
  static Map<String, RouteResultBuilder> routeMap = {
    tabBarPage: (arguments) => RouteResult(widget: TabsPage()),
    layoutPage: (arguments) => RouteResult(widget: BuildingLayoutPage()),
    cardLayoutPage: (arguments) => RouteResult(widget: CardLayoutPage()),
    containerPage: (arguments) => RouteResult(widget: ContainerLayoutPage()),
    gridLayoutPage: (arguments) => RouteResult(widget: GridLayoutPage()),
    listViewPage: (arguments) => RouteResult(widget: ListViewPage()),
    pavlovaCasePage: (arguments) => RouteResult(widget: PavlovaLayoutPage()),
    stackLayoutPage: (arguments) => RouteResult(widget: StackLayoutPage()),
    baseWidgetList: (arguments) => RouteResult(widget: BaseWidgetList()),
    multiChild: (arguments) => RouteResult(widget: MultiChildCase()),
    singleChild: (arguments) => RouteResult(widget: SingleChildCase()),
    comboWidget: (arguments) => RouteResult(widget: ComboWidgetCase()),
    interactionSample: (arguments) => RouteResult(widget: InteractionSample()),
    dataTransferCase: (arguments) => RouteResult(widget: DataTransferCase()),

    // Widget
    appBarWidget:(arguments) => RouteResult(widget: AppBarWidget()),

    // Widget-ListView
    listViewBase:(arguments) => RouteResult(widget: ListViewWidget()),
    listViewBuilder:(arguments) => RouteResult(widget: ListViewBuilderClass()),
    listViewSeparated:(arguments) => RouteResult(widget: ListViewSeparatedClass()),
    // Widget-GridView
    gridViewWidget:(arguments) => RouteResult(widget: GridViewClass()),
    gridViewBuilder:(arguments) => RouteResult(widget: GridViewBuilderClass()),
    gridViewExtent:(arguments) => RouteResult(widget: GridViewExtentClass()),

    listViewOne:(arguments) => RouteResult(widget: ListViewOneClass()),

  };

  // 统一路由处理：参数、回调
  static Route routeConfigureHandler(RouteSettings routeSettings) {
    RouteResult routeResult =
        routeMap[routeSettings.name](routeSettings.arguments);

    CustomRouteSettings newRouteSettings = CustomRouteSettings(
      arguments: routeSettings.arguments,
      name: routeSettings.name,
      routeName: routeResult.routeName,
      isShowStatusBar: routeResult.isShowStatusBar,
    );

    Widget page = routeResult.widget ?? NoRoute();

    return MaterialPageRoute(
      builder: (BuildContext context) {
        return page;
      },
      settings: newRouteSettings,
    );
  }
}

/// RouteResult类
class RouteResult {
  // 路由页面
  final Widget widget;

  // 是否显示状态，默认显示
  final bool isShowStatusBar;

  // 路由页面对应的路由名称
  final String routeName;

  // 路由页面标题
  final String title;

  // 路由页面描述
  final String description;

  const RouteResult({
    this.widget,
    this.title,
    this.isShowStatusBar = false,
    this.routeName = '',
    this.description = '',
  });
}

/// 空路由页面
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
        ));
  }
}

/// 自定义 RouteSetting 类
class CustomRouteSettings extends RouteSettings {
  // 路由名称
  final String routeName;

  // 路由标题
  final String title;

  // 是否显示状态栏
  final bool isShowStatusBar;

  const CustomRouteSettings({
    this.routeName,
    this.isShowStatusBar,
    this.title,
    String name,
    bool isInitialRoute = false,
    Object arguments,
  }) : super(
          name: name,
          arguments: arguments,
        );
}
