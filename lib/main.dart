import 'package:digital_department_flutter/topsection/navigationbuttons.dart';
import 'package:digital_department_flutter/topsection/topsection.dart';
import 'package:flutter/material.dart';

import 'mainsection/card.dart';
import 'mainsection/mainsection.dart';
import 'mainsection/sectionheader.dart';
import 'topsection/appbar.dart';
import 'topsection/avatar.dart';
import 'topsection/background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainSection(),
    );
  }
}