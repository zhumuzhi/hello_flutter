import 'package:flutter/material.dart';

class ContainerLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContainerCase'),
      ),
      body: Center(child: buildImageColumn()),
    );
  }

  Widget buildImageColumn() => Container(
    decoration: BoxDecoration(
      color: Colors.black26,
    ),
    child: Column(
      children: <Widget>[
        buildImageRow(1),
        buildImageRow(3),
      ],
    ),
  );

  Widget buildDecoratedImage(int imageIndex) => Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.black38),
        borderRadius: const BorderRadius.all(const Radius.circular(8)),
      ),
      margin: const EdgeInsets.all(4),
      child: Image.asset('assets/'
          'images/pic$imageIndex.jpg'),
    ),
  );

  Widget buildImageRow(int imageIndex) => Row(
    children: <Widget>[
      buildDecoratedImage(imageIndex),
      buildDecoratedImage(imageIndex + 1),
    ],
  );

}


