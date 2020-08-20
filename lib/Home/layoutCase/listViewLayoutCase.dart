import 'package:flutter/material.dart';


class listViewCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('listViewCase'),
        ),
        body: new Center(
          child: buildList(),
        ),
      );
    }

    /// ListView-Widget
    Widget buildList() => ListView (
      padding: EdgeInsets.only(top: 50),
      children: <Widget>[
        tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        tile('The Castro Theater', '429 Castro St', Icons.theaters),
        tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        tile('Roxie Theater', '3117 16th St', Icons.theaters),
        tile('United Artists Stonestown Twin', '501 Buckingham Way',
            Icons.theaters),
        tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        Divider(),
        tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
        tile(
            'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
        tile('La Ciccia', '291 30th St', Icons.restaurant),
      ],
    );

    /// ListTitle-Widget
    ListTile tile(String title, String  subTitle, IconData icon) => ListTile(
      title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text(subTitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );

  }
