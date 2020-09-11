import 'package:flutter/material.dart';
import 'package:hello_flutter/hf_widget/hf_widgetExample/widget_ScaffoldCase.dart';
import 'package:hello_flutter/hf_widget/hf_widgetExample/widget_TabBarCase.dart';
import 'package:hello_flutter/hf_widget/hf_widgetExample/widget_ListView.dart';
import 'package:hello_flutter/hf_widget/hf_widgetExample/widget_Stack.dart';


class BaseWidgetList extends StatelessWidget {


  final List<String> titleList = <String> [
    'Widget-Scaffold',
    'Widget-TabBar',
    'Widget-ListView',
    'Widget-Stack',
    'OtherView'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BaseWidgetList')),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: titleList.length,
        itemBuilder: (BuildContext context, int index){
          return _ListItem(title: titleList[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

class _ListItem extends StatelessWidget {

  final String title;

  const _ListItem({Key key,this.title}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreenAccent,
      child: ListTile(
        title: Text(title),
        onTap: (){
          print('点击了 $title Item');

          if ('$title'.toString() == 'Widget-Scaffold') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ScaffoldCase()));
          }

          if ('$title'.toString() == 'Widget-TabBar') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TabBarCase()));
          }

          if ('$title'.toString() == 'Widget-ListView') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ListViewWidget()));
          }

          if ('$title'.toString() == 'Widget-Stack') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => StackWidgetCase()));
          }

        },
      ),
    );
  }
}
