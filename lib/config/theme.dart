import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      primaryColor: const Color.fromRGBO(187, 37, 74, 1),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Raleway',
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
        displayMedium: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontSize: 16,
        ),
        displaySmall: TextStyle(
          color: Color.fromRGBO(113, 113, 113, 1),
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
      ));
}
