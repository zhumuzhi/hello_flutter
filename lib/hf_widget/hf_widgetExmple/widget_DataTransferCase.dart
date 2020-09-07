import 'package:flutter/material.dart';

class DataTransferCase extends StatelessWidget {
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
                Container(),
                Container(),
                Container(),
              ],
            ),
            bottomNavigationBar: TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.red,
                indicatorColor: Colors.cyanAccent,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                    text: "Inherited",
                  ),
                  Tab(
                    icon: Icon(Icons.rss_feed),
                    text: "Notification",
                  ),
                  Tab(
                    icon: Icon(Icons.rv_hookup),
                    text: "EventBus",
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
