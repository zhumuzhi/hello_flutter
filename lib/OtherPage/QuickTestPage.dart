/// Created by ZhuMZ
/// Created on 2020/12/16
/// page QuickTestPage
/// desc 快速测试-页面

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuickTestPage extends StatefulWidget {
  @override
  _QuickTestPageState createState() => _QuickTestPageState();
}

class _QuickTestPageState extends State<QuickTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('快速测试')),
      body: Center(
        child: Card(child: _normalExpansionTile()),
      ),
    );
  }

  Widget _normalExpansionTile() {
    return ExpansionTile(
      title: Text(
        'Widget-0',
        style: Theme.of(context).textTheme.headline6,
      ),
      leading: Icon(Icons.ac_unit),
      // backgroundColor: Colors.white12,
      children: <Widget>[
        _listTile(),
        ListTile(
          title: Text('Widget-2'),
        ),
      ],
      initiallyExpanded: false, //打开状态  不写默认false闭合状态
    );
  }

  Widget _listTile (){
    return  ListTile(
      // leading: Icon(Icons.ac_unit),
      title: Text('ListTile', style: Theme.of(context).textTheme.bodyText1),
      trailing: Icon(Icons.arrow_right_rounded),
      subtitle: Text('ListTile.description'),
      // onTap: () => Navigator.of(context).pushNamed(myRoute.routeName),
    );
  }


}
