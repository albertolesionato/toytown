import 'package:flutter/material.dart';
import 'edge_insets_.dart';

class Padding_ extends Padding {
  const Padding_.allSmall({required super.child})
      : super(padding: const EdgeInsets_.allSmall());

  const Padding_.allMedium({required super.child})
      : super(padding: const EdgeInsets_.allMedium());
}
