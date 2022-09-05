import 'package:flutter/material.dart';

import 'foundation.dart';

class SizedBox_ extends SizedBox {
  const SizedBox_.smallSquare() : super.square(dimension: Dips.small);
  const SizedBox_.mediumSquare(): super.square(dimension: Dips.medium);
  const SizedBox_.largeSquare(): super.square(dimension: Dips.large);
}