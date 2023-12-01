
import 'package:digital_department_flutter/topsection/appbar.dart';
import 'package:digital_department_flutter/topsection/topsection.dart';
import 'package:flutter/material.dart';

import 'mainsection/mainsection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              expandedHeight: 306,
              flexibleSpace: FlexibleSpaceBar(
                background: TopSection(),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  // Your code for MainSection goes here
                  return const MainSection();
                },
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
