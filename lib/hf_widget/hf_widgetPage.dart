import 'package:flutter/material.dart';
import 'package:hello_flutter/hf_widget/hf_widgetExmple/widget_MultiChild.dart';
import 'hf_widgetExmple/widget_ListView.dart';
import 'hf_widgetExmple/widget_SingleChild.dart';
import 'hf_widgetExmple/widget_Stack.dart';
import 'hf_widgetExmple/widget_ComboWidget.dart';
import 'hf_widgetExmple/widget_interactionSample.dart';
import 'hf_widgetExmple/widget_DataTransferCase.dart';


class WidgetList extends StatelessWidget {
  final List<String> titleList = <String>[
    'ListView',
    'singleChild',
    'multiChild',
    'stackWidget',
    'comboWidget',
    'interaciton',
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
      color: Colors.green,
      child: ListTile(
          title: Text('$title'),
          onTap: () {
            print('点击了 $title Item');

            if ('$title'.toString() == 'ListView') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ListViewWidget()));
            }

            if ('$title'.toString() == 'singleChild') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SingleChildCase()));
            }

            if ('$title'.toString() == 'multiChild') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MultiChildCase()));
            }

            if ('$title'.toString() == 'stackWidget') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StackWidgetCase()));
            }

            if ('$title'.toString() == 'comboWidget') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ComboWidgetCase()));
            }

            if ('$title'.toString() == 'interaciton') {
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
