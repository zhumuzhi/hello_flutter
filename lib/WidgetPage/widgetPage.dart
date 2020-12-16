import 'package:flutter/material.dart';
import 'package:hello_flutter/Support/define/define.dart';
import 'package:hello_flutter/Router/routeConfigure.dart';

class WidgetList extends StatelessWidget {

  final List<String> titleList = <String>[
    'baseWidgetList',
    'singleChild',
    'multiChild',
    'comboWidget',
    'interactionSample',
    'dataTransferCase',
    'OtherView'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets')),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return _normalExpansionTile(context);
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
      ),
    );
  }

  Widget _normalExpansionTile(BuildContext context) {
    List<Widget> widgetsList = [];
    for (var value in titleList) {
      print(value);
      if (value == null) {
        break;
      }
      widgetsList.add(_listTile(context, value));
    }
    return Card(
      child: ExpansionTile(
        title: Text(
          'Widget',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: Icon(Icons.extension),
        children: widgetsList,
        initiallyExpanded: false,
      ),
    );
  }

  Widget _listTile(BuildContext context, String title) {
    return ListTile(
      title: Text(title, style: TextStyle(fontSize: 14)),
      trailing: Icon(Icons.arrow_right_rounded),
      // subtitle: Text('ListTile.description'),
      onTap: () {
        if ('$title'.toString() == 'baseWidgetList') {
          Navigator.pushNamed(context, RouteConfigure.baseWidgetList);
        }

        if ('$title'.toString() == 'singleChild') {
          Navigator.pushNamed(context, RouteConfigure.singleChild);
        }

        if ('$title'.toString() == 'multiChild') {
          Navigator.pushNamed(context, RouteConfigure.multiChild);
        }

        if ('$title'.toString() == 'comboWidget') {
          Navigator.pushNamed(context, RouteConfigure.comboWidget);
        }

        if ('$title'.toString() == 'interactionSample') {
          Navigator.pushNamed(context, RouteConfigure.interactionSample);
        }

        if ('$title'.toString() == 'dataTransferCase') {
          Navigator.pushNamed(context, RouteConfigure.dataTransferCase);
        }
      },
    );
  }
}
