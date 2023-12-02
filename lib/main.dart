import 'package:flutter/material.dart';
import 'package:digital_department_flutter/mainsection/background.dart';
import 'package:digital_department_flutter/topsection/topsection.dart';

import 'mainsection/mainsection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  int selectedTabIndex = 0;
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MyApp index = new MyApp();
  get selectedTabIndex => index.selectedTabIndex;

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
                  return KeyedSubtree(
                    key: UniqueKey(),
                    child: selectedTabIndex == 0
                        ? MainSection()
                        : Background(),
                  );
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
