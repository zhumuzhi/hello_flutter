/// Created by ZhuMZ
/// Created on 2020/12/16
/// page widgetGroup
/// desc Widget组模型

import 'package:flutter/material.dart';
import 'package:hello_flutter/OtherPage/grammarCase.dart';
import 'package:hello_flutter/WidgetPage/Model/widgetItem.dart';
import 'package:hello_flutter/Router/routeConfigure.dart';

// Widget组模型
class WidgetGroup {
  // Widget 组名
  final String groupName;

  // Widget 组icon
  final Widget icon;

  // Widget 组item
  final List<WidgetItem> items;

  const WidgetGroup({this.groupName, this.icon, @required this.items});
}

final kWidgetPageData = <WidgetGroup>[
  WidgetGroup(
    groupName: 'Widgets',
    icon: Icon(Icons.extension),
    items: <WidgetItem>[
      WidgetItem(
        itemName: 'Text',
        description: '用于显示文字的组件，核心样式有style属性控制',
        routeName: RouteConfigure.textWidget,
      ),
      WidgetItem(
        itemName: 'baseWidgetList',
        description: '',
        routeName: RouteConfigure.baseWidgetList,
      ),
      WidgetItem(
        itemName: 'singleChild',
        description: '',
        routeName: RouteConfigure.singleChild,
      ),
      WidgetItem(
        itemName: 'multiChild',
        description: '',
        routeName: RouteConfigure.multiChild,
      ),
      WidgetItem(
        itemName: 'comboWidget',
        description: '',
        routeName: RouteConfigure.comboWidget,
      ),
      WidgetItem(
        itemName: 'interactionSample',
        description: '',
        routeName: RouteConfigure.interactionSample,
      ),
      WidgetItem(
        itemName: 'dataTransferCase',
        description: '',
        routeName: RouteConfigure.dataTransferCase,
      ),
      WidgetItem(
        itemName: 'AppBar',
        description: '',
        routeName: RouteConfigure.appBarWidget,
      ),
    ],
  ),
  WidgetGroup(
    groupName: 'ListView',
    icon: Icon(Icons.format_list_bulleted),
    items: <WidgetItem>[
      WidgetItem(
        itemName: 'ListView',
        description: '适用于Cell较少/页面固定情况',
        routeName: RouteConfigure.listViewBase,
      ),
      WidgetItem(
        itemName: 'ListView.builder',
        description: '适用于Cell较多(无限)情况，显示时才创建，基于Sliver的懒加载模型',
        routeName: RouteConfigure.listViewBuilder,
      ),
      WidgetItem(
        itemName: 'ListView.separated',
        description: '适用于Cell较多(无限)情况，比builder多了一个分割组件生成器(separatorBuilder)参数',
        routeName: RouteConfigure.listViewSeparated,
      ),
      WidgetItem(
        itemName: 'GridView',
        description: '适用于Item较少/页面固定情况',
        routeName: RouteConfigure.gridViewWidget,
      ),
      WidgetItem(
        itemName: 'GridView.extent',
        description: '适用于Item较少/页面固定情况，与GridView类似，可快速指定子widget宽度',
        routeName: RouteConfigure.gridViewExtent,
      ),
      WidgetItem(
        itemName: 'GridView.builder',
        description: '适用于Item数量较多，且样式重复情况。动态创建子widget',
        routeName: RouteConfigure.gridViewBuilder,
      ),
      WidgetItem(
        itemName: 'ListViewOne',
        description: '',
        routeName: RouteConfigure.listViewOne,
      ),
    ],
  ),
];

