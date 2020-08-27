
import 'package:flutter/material.dart';
import 'WidgetExmple/widget_ListView.dart';
import 'WidgetExmple/widget_SingleChild.dart';

class WidgetList extends StatelessWidget {
  final List<String> titleList = <String>[
    'ListView',
    'singleChild',
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
    );/**/
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

          }),
    );
  }
}
