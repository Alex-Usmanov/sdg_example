import 'package:flutter/material.dart';

Widget makeWidgetTestable(Widget widget) {
  return MaterialApp(home: Material(child: widget));
}
