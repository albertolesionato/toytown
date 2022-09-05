import 'package:flutter/material.dart';

import 'foundation.dart';
import 'edge_insets_.dart';

class ElevatedButton_ extends ElevatedButton {
  ElevatedButton_.wide({required super.onPressed, required Widget child,
  Color? backgroundColor})
      : super(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              padding: MaterialStateProperty.all(
                const EdgeInsets_.allMedium(),
              ),
              backgroundColor: MaterialStateProperty.all(backgroundColor),
              minimumSize: MaterialStateProperty.all(
                const Size(double.infinity, Dips.large),
              ),
            ),
            child: child);
}
