import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  Color buttonColor;
  String buttonText;
  BigButton(this.buttonColor, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      color: buttonColor,
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(buttonText, style: ButtonTheme()),
        ],
      ),
    );
  }
}

TextStyle ButtonTheme() {
  return TextStyle(
    fontSize: 36,
    color: Color.fromRGBO(244, 244, 248, 1),
  );
}
