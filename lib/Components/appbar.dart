import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

AppBar CrackerAppBar( Color background) {
  return AppBar(
    backgroundColor: background,
    elevation: 0.0,
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.help),
        onPressed: () {},
      ),
    ],
  );
}
