import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class InteractionSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 34),
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: TabBarView(
              children: [
                ListenerWidget(),
                DragWidget(),
                DoubleGestureWidget(),
              ],
            ),
            bottomNavigationBar: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "指针事件",
                ),
                Tab(
                  icon: Icon(Icons.rss_feed),
                  text: "手势",
                ),
                Tab(
                  icon: Icon(Icons.perm_identity),
                  text: "手势冲突",
                ),
              ],
              unselectedLabelColor: Colors.blueGrey,
              labelColor: Colors.blue,
              indicatorColor: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

/// ===== 指针事件 =====

class ListenerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("指针-Listener")),
        body: Listener(
          child: Container(
            color: Colors.red,
            width: 300,
            height: 300,
          ),
          onPointerDown: (event) {
            print("down $event");
          },
          onPointerMove: (event) {
            print("move $event");
          },
          onPointerUp: (event) {
            print("up $event");
          },
        ));
  }
}

/// ===== 手势 =====

class DragWidget extends StatefulWidget {
  @override
  _DragWidgetState createState() => _DragWidgetState();
}

class _DragWidgetState extends State<DragWidget> {
  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("手势-GestureDetector"),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
              top: _top,
              left: _left,
              child: GestureDetector(
                child: Container(
                  color: Colors.red,
                  width: 50,
                  height: 50,
                ),
                onTap: () {
                  print("Tap");
                },
                onDoubleTap: () {
                  print("Double Tap");
                },
                onLongPress: () {
                  print("Long Press");
                },
                onPanUpdate: (e) {
                  setState(() {
                    _left += e.delta.dx;
                    _top += e.delta.dy;
                  });
                },
              ))
        ],
      ),
    );
  }
}

/// ===== 手势冲突 =====

class DoubleGestureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("手势冲突"),
        ),
        body: RawGestureDetector(
          gestures: {
            MultipleTapGestureRecognizer: GestureRecognizerFactoryWithHandlers<
                MultipleTapGestureRecognizer>(
              () => MultipleTapGestureRecognizer(),
              (MultipleTapGestureRecognizer instance) {
                instance.onTap = () => print('parent tapped ');
              },
            )
          },
          child: Container(
            color: Colors.pinkAccent,
            child: Center(
              child: GestureDetector(
                  onTap: () => print('Child tapped'),
                  child: Container(
                    color: Colors.blueAccent,
                    width: 200.0,
                    height: 200.0,
                  )),
            ),
          ),
        ));
  }
}

class MultipleTapGestureRecognizer extends TapGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    acceptGesture(pointer);
  }
}





