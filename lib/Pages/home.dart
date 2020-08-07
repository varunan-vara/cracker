import 'package:flutter/material.dart';
import '../Components/bigbutton.dart';

class MainFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Column(children: <Widget>[
            BigButton(Colors.indigo[400], "Eat Out"),
            BigButton(Colors.red[400], "Go on a Road Trip"),
            BigButton(Colors.amber[700], "Buy Groceries"),
            BigButton(Colors.green[500], "Drink"),
            BigButton(Colors.blueGrey[400], "Hang out"),
            BigButton(Colors.deepOrange[400], "Go on a Date"),
            BigButton(Colors.deepPurple[400], "Take the Kids out"),
            BigButton(Colors.brown[400], "Go on an Adventure"),
            BigButton(Colors.teal[400], "Go for a Walk"),
            BigButton(Colors.pink[800], "Do Anything"),
          ],),
        ),
      ],),
    );
  }
}
