import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

typedef StringMap<T> = Map<String, T>;

class Dips {
  static const small = 12.0;
  static const medium = 24.0;
  static const large = 42.0;
}

class Dates {
  static String yMdHm(DateTime dateTime) =>
      DateFormat('y-M-d H:m').format(dateTime);
}

extension PushRoute on BuildContext {
  Future<T?> pushNamed<T extends Object?>(String routeName, [Object? arguments]) =>
      Navigator.pushNamed<T>(this, routeName, arguments: arguments);
}
