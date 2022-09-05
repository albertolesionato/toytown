import 'package:flutter/material.dart';
import 'package:toytown/toytown.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class AutoHorizontalScrollerExample extends StatelessWidget {
  const AutoHorizontalScrollerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AutoHorizontalScroller(
          child: Text(lorem(paragraphs: 2, words: 60)),
        ),
      ),
    );
  }
}
