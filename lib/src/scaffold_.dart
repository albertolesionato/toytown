import 'package:flutter/material.dart';
import 'padding_.dart';
import 'sized_box_.dart';

class Scaffold_ extends Scaffold {
  Scaffold_.list({required List<Widget> children})
      : super(
          body: Padding_.allMedium(
              child: ListView.separated(
                  itemBuilder: (_, index) => children[index],
                  separatorBuilder: (_, __) => const SizedBox_.smallSquare(),
                  itemCount: children.length)),
        );
}
