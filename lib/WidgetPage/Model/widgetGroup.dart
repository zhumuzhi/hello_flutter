/// Created by ZhuMZ
/// Created on 2020/12/16
/// page widgetGroup
/// desc Widget组模型

import 'package:flutter/material.dart';
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
    ],
  ),
];
