import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flag/flag.dart';

const lesslight = Color.fromRGBO(230, 230, 234, 1);

String country = "Canada";

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(children: <Widget>[
        Container(
          height: 80,
          padding: EdgeInsets.symmetric(vertical: 14),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: lesslight,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: <Widget>[
            FlatButton(
              onPressed: (){},
              child: Container(
                height: 40,
                child: Row(children: <Widget>[
                  Flag(
                    "CA",
                    height: 50,
                    width: 100,
                  ),
                  Text("  Region: " + country,
                      style:TextStyle(fontSize: 26,))
                ],),
              ),
            ),
          ],),
        ),
        Container(
          height: 200,
          width: size.width,
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: lesslight,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: <Widget>[
            Text("Physical Distancing: Enforced (2 Metres)",
            style:TextStyle(color: Colors.black, fontSize: 18,)),
            Text("Status: Opening Up",
                style:TextStyle(color: Colors.black, fontSize: 18,)),
            Text("",
                style:TextStyle(color: Colors.black, fontSize: 18,)),
            Text("Number of Cases: -------------",
                style:TextStyle(color: Colors.black, fontSize: 18,)),
            Text("Number of Deaths: -------------",
                style:TextStyle(color: Colors.black, fontSize: 18,)),
            Text("Tests Accomplished: -------------",
                style:TextStyle(color: Colors.black, fontSize: 18,)),
          ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ],),
    );
  }
}
