import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  Color primary;
  Color secondary;
  Color text;

  SettingsPage(this.primary, this.secondary, this.text);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: FractionalOffset.centerLeft,
      child: Container(
        width: size.width,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: Text(
                "Notification Settings",
                style: TextStyle(color: text),
              ),
              subtitle: Text(
                "Edit the way this app uses your notifications here.",
                style: TextStyle(color: Color.fromRGBO(244, 244, 248, 0.6)),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Location Settings",
                style: TextStyle(color: text),
              ),
              subtitle: Text(
                "Edit the way this app uses your location details here.",
                style: TextStyle(color: Color.fromRGBO(244, 244, 248, 0.6)),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
