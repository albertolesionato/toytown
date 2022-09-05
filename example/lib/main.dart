import 'package:flutter/material.dart';
import 'package:toytown/toytown.dart';
import 'package:toytown_example/future_test.dart';

import 'auto_horizontal_scroller_example.dart';
import 'offstage_please.dart';
import 'raw_button_vs_well_done.dart';

final routes = {
  'offstagePlease': (_) => const OffstagePlease(),
  'futureTest': (_) => const FutureTest(),
  'autoHorizontalScrollerExample': (_) => const AutoHorizontalScrollerExample(),
  'rawButtonVsWellDone': (_) => const RawButtonVsWellDone()
};

void main() {
  //debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      routes: routes,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var altColor = false;
    navBtn(name) {
      altColor = !altColor;
      return ElevatedButton_.wide(
          backgroundColor: altColor ? Colors.blue : Colors.green,
          onPressed: () => context.pushNamed(name),
          child: Text(name));
    }

    return Scaffold_.list(
        children: routes.keys.map((key) => navBtn(key)).toList());
  }
}
