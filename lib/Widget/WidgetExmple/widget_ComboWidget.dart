import 'package:flutter/material.dart';
import 'dart:math';


/// Widget组装

class UpdateItemModel {
  String appIcon;
  String appName;
  String appSize;
  String appDate;
  String appDescription;
  String appVersion;

  UpdateItemModel(
      {this.appIcon,
      this.appName,
      this.appSize,
      this.appDate,
      this.appDescription,
      this.appVersion});
}

class ComboWidgetCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ComboWidgetCase')),
      body: ListView(
        children: [
          UpdatedItemWidget(
            model: UpdateItemModel(
                appIcon: "assets/images/google.png",
                appDescription:
                    "Thanks for using Google Maps! This release brings bug fixes that improve our product to help you discover new places and navigate to them.",
                appName: "Google Maps - Transit & Fond",
                appSize: "137.2",
                appVersion: "Version 5.19",
                appDate: "2019年6月5日"),
            onPressed: () {
              print("点击了Open按钮");
            },
          ),
          Container(height: 60),
          Cake(),
        ],
      ),
    );
  }
}

class UpdatedItemWidget extends StatelessWidget {
  final UpdateItemModel model;
  final VoidCallback onPressed;

  UpdatedItemWidget({Key key, this.model, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[buildTopRow(context), buildBottomRow(context)],
    );
  }

  Widget buildTopRow(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(10),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(model.appIcon, width: 80, height: 80))),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(model.appName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20.0, color: Color(0xFF8E8D92))),
            Text("${model.appDate}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16.0, color: Color(0xFF8E8D92))),
          ],
        )),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: FlatButton(
            child: Text(
              'OPEN',
              style: TextStyle(
                  color: Color(0xFF007AFE), fontWeight: FontWeight.bold),
            ),
            color: Color(0xFFF1F0F7),
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            onPressed: onPressed,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
          ),
        )
      ],
    );
  }

  Widget buildBottomRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  Positioned(child: Text(model.appDescription, maxLines: 2)),
                  Positioned(
                    right: -10.0,
                    child: FlatButton(
                      onPressed: () {
                        print("点击了More按钮, 根据状态设置行高");
                      },
                      child: Text('More',
                          style: TextStyle(
                              color: Colors.blue,
                              backgroundColor: Colors.white)),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text("${model.appVersion} • ${model.appSize} MB"))
            ]));
  }
}

/// 绘制图形

class Cake extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        size: Size(200, 200),
        painter: WheelPainter(),
      ),
    );
  }
}

class WheelPainter extends CustomPainter {
  //设置画笔颜色
  Paint getColoredPaint(Color color) {
    Paint paint = Paint();
    paint.color = color;
    return paint;
  }

  @override
  void paint(Canvas canvas, Size size) {
    //饼图尺寸
    double wheelSize = min(size.width, size.height) / 2;
    double nbElem = 6;
    double radius = (2 * pi) / nbElem;
    Rect boundingRect = Rect.fromCircle(
        center: Offset(wheelSize, wheelSize), radius: wheelSize);

    //画圆弧，每次1/6个圆弧
    canvas.drawArc(
        boundingRect, 0, radius, true, getColoredPaint(Colors.orange));
    canvas.drawArc(
        boundingRect, radius, radius, true, getColoredPaint(Colors.black38));
    canvas.drawArc(
        boundingRect, radius * 2, radius, true, getColoredPaint(Colors.green));
    canvas.drawArc(
        boundingRect, radius * 3, radius, true, getColoredPaint(Colors.red));
    canvas.drawArc(
        boundingRect, radius * 4, radius, true, getColoredPaint(Colors.blue));
    canvas.drawArc(
        boundingRect, radius * 5, radius, true, getColoredPaint(Colors.pink));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}
