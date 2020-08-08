import 'package:flutter/material.dart';
import '../Components/bigbutton.dart';

class MainFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        FlatButton(onPressed: () {}, child: BigButton(Colors.indigo[400], "Eat Out"),),
        FlatButton(onPressed: () {}, child: BigButton(Colors.red[400], "Go on a Road Trip"),),
        FlatButton(onPressed: () {}, child: BigButton(Colors.amber[700], "Buy Groceries"),),
        FlatButton(onPressed: () {}, child: BigButton(Colors.green[500], "Drink"),),
        FlatButton(onPressed: () {}, child: BigButton(Colors.blueGrey[400], "Hang out"),),
        FlatButton(onPressed: () {}, child: BigButton(Colors.deepOrange[400], "Go on a Date"),),
        FlatButton(onPressed: () {}, child: BigButton(Colors.deepPurple[400], "Take the Kids out"),),
        FlatButton(onPressed: () {}, child: BigButton(Colors.brown[400], "Go on an Adventure"),),
        FlatButton(onPressed: () {}, child: BigButton(Colors.teal[400], "Go for a Walk"),),
        FlatButton(onPressed: () {}, child: BigButton(Colors.pink[800], "Do Anything"),),
    ],),
    );
  }
}
