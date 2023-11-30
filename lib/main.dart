
import 'package:digital_department_flutter/topsection/topsection.dart';
import 'package:flutter/material.dart';

import 'mainsection/mainsection.dart';

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
