import 'package:flutter/material.dart';

final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.grey[200],
    iconTheme: const IconThemeData(
      color: Colors.black54,
    ),
    primaryColor: Colors.deepOrange,
    primaryColorLight: Colors.deepOrange,
    textTheme: const TextTheme(
      bodySmall: TextStyle(
          fontSize: 8, fontWeight: FontWeight.w400, color: Colors.black45),
      bodyMedium: TextStyle(
          fontSize: 10, fontWeight: FontWeight.w500, color: Colors.black54),
      bodyLarge: TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54),
      headlineSmall: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
      headlineMedium: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black54),
      headlineLarge: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black54),
    ));
