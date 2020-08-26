import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import '../godfile.dart';

const lesslight = Color.fromRGBO(230, 230, 234, 1);

List<String> CountryList = ["US","CA","IN","UK"];
List<String> RegionList = ["United States","Canada","India","United KingdomK"];

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(children: <Widget>[
        FlatButton(
          onPressed: (){showDialog(
            context: context,
            builder: (BuildContext context) {
              return RegionCollecter();
            }
          );},
          child: Container(
            height: 80,
            padding: EdgeInsets.symmetric(vertical: 14),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: lesslight,
              borderRadius: BorderRadius.circular(10),),
            child: Column(children: <Widget>[
              Container(
                height: 40,
                child: new regionbutton(CountryList[Region], RegionList[Region]),
              ),

            ],),
          ),

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

class RegionCollecter extends StatefulWidget {
  RegionCollectery createState() => RegionCollectery();
}

class RegionCollectery extends State<RegionCollecter> {

  double result = 0;
  int _value = 0;

  void _radioHandler (int value) {
    setState(() {
      _value = value;
      Region = value;
    });
    print("_value = " + _value.toString());
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Change Country", style: TextStyle(color: Colors.black)),
      content: Container(
        height: 200,
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Radio(
                value: 0,
                groupValue: Region,
                onChanged: _radioHandler,
              ),
              Text("United States", style: TextStyle(color: Colors.black),)
            ],),
            Row(children: <Widget>[
              Radio(
                value: 1,
                groupValue: Region,
                onChanged: _radioHandler,
              ),
              Text("Canada", style: TextStyle(color: Colors.black),)
            ],),
            Row(children: <Widget>[
              Radio(
                value: 2,
                groupValue: Region,
                onChanged: _radioHandler,
              ),
              Text("India", style: TextStyle(color: Colors.black),)
            ],),
          ],
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: FlatButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Text("Continue"),
          ),
        )
      ],
    );
  }
}

class regionbutton extends StatelessWidget {

  String cont;
  String reg;

  regionbutton(this.cont, this.reg);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Flag(
        cont,
        height: 50,
        width: 100,
      ),
      Center(
        child: Text(reg,
            style:TextStyle(fontSize: 26,)),
      ),
    ],);
  }
}