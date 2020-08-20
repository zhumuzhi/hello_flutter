import 'package:flutter/material.dart';


class gridLayoutCase extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gridLayoutCase'),
      ),
      body: new Center(
        child: buildGrid(),
      ),
    );
  }


  Widget buildGrid() => GridView.extent(
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: buildGridTitleList(30),
      );

  List<Container> buildGridTitleList(int count) =>  List.generate(count, (index) => Container(
//      padding: EdgeInsets.only(top: 10),
      child: Image.asset('assets/images/pic3.jpg')
    )
  );

}