import 'package:flutter/material.dart';

import 'package:hello_flutter/Support/define/define.dart';

import 'package:hello_flutter/hf_widget/hf_widgetExample/widget_BaseWidgetList.dart';
import 'package:hello_flutter/hf_widget/hf_widgetExample/widget_MultiChild.dart';
import 'package:hello_flutter/hf_widget/hf_widgetExample/widget_SingleChild.dart';
import 'hf_widgetExample/widget_ComboWidget.dart';
import 'hf_widgetExample/widget_InteractionSample.dart';
import 'hf_widgetExample/widget_DataTransferCase.dart';


class WidgetList extends StatelessWidget {
  final List<String> titleList = <String>[
    'BaseWidgetList',
    'singleChild',
    'multiChild',
    'comboWidget',
    'interaction',
    'dataTransfer',
    'OtherView'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets')),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: titleList.length,
        itemBuilder: (BuildContext context, int index) {
          return _ListItem(title: titleList[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    ); /**/
  }
}

class _ListItem extends StatelessWidget {
  final String title;

  const _ListItem({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: randomColor(),
      child: ListTile(
          title: Text('$title'),
          onTap: () {
            print('点击了 $title Item');

            if ('$title'.toString() == 'BaseWidgetList') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BaseWidgetList()));
            }

            if ('$title'.toString() == 'singleChild') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SingleChildCase()));
            }

            if ('$title'.toString() == 'multiChild') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MultiChildCase()));
            }

            if ('$title'.toString() == 'comboWidget') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ComboWidgetCase()));
            }

            if ('$title'.toString() == 'interaction') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InteractionSample()));
            }

            if ('$title'.toString() == 'dataTransfer') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DataTransferCase()));
            }

          }),
    );
  }
}
