import 'package:digital_department_flutter/mainsection/navigationbuttons.dart';
import 'package:flutter/material.dart';
import 'package:digital_department_flutter/mainsection/background.dart';
import 'package:digital_department_flutter/topsection/topsection.dart';

import 'Assets/Consts.dart';
import 'mainsection/mainsection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          TopSection(),
          Expanded(
            child: Navigationbuttons(),
          ),
        ],
      ),
    );
  }
}
