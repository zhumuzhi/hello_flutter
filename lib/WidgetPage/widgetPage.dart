import 'package:flutter/material.dart';
import 'package:hello_flutter/Support/define/define.dart';
import 'package:hello_flutter/WidgetPage/Model/widgetGroup.dart';
import 'package:hello_flutter/WidgetPage/Model/widgetItem.dart';


class WidgetList extends StatefulWidget {
  @override
  _WidgetListState createState() => _WidgetListState();
}

class _WidgetListState extends State<WidgetList> {
  @override
  Widget build(BuildContext context) {
    // Widget数据
    final widgetData = <Widget>[];
    for (WidgetGroup group in kWidgetPageData) {
      widgetData.add(_groupWidget(group));
    }
    return Scaffold(
        appBar: AppBar(title: Text('Widgets')),
        body: IndexedStack(
          children: [
            ListView(children: widgetData),
          ],
        ));
  }

  Widget _itemWidget(WidgetItem widgetItem) {
    final textStyle = Theme.of(context)
        .textTheme
        .bodyText2
        .copyWith(fontWeight: FontWeight.bold);

    String subTitle = widgetItem.description;

    return Card(
      child: ListTile(
        trailing: Icon(Icons.arrow_right),
        title: Text(
          widgetItem.itemName,
          style: textStyle,
        ),
        subtitle: subTitle.length > 0
            ? Text(widgetItem.description, style: textStyle)
            : null,
        onTap: () {
          Navigator.of(context).pushNamed(widgetItem.routeName);
        },
      ),
    );
  }

  Widget _groupWidget(WidgetGroup widgetGroup) {
    return Card(
      child: ExpansionTile(
        leading: widgetGroup.icon,
        title: Text(
          widgetGroup.groupName,
          style: Theme.of(context).textTheme.headline6,
        ),
        children: widgetGroup.items.map(_itemWidget).toList(),
      ),
    );
  }
}
