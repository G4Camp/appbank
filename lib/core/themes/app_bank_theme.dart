import 'package:flutter/material.dart';

class AppBAnkTheme {
  static ThemeData theme = ThemeData(
    primaryColor: const Color.fromARGB(
      255,
      131,
      10,
      209,
    ),
    textTheme: const TextTheme(
        headline1: TextStyle(
          color: Colors.white,
          fontSize: 38,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.9,
        ),
        headline2: TextStyle(
          color: Color.fromARGB(255, 34, 34, 34),
          fontSize: 24,
          fontWeight: FontWeight.w400,
        )),
  );
}
