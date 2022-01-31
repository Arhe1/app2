import 'package:app2/theme_demo_screen.dart';
import 'package:flutter/material.dart';

ThemeData globalTheme() => ThemeData(
  fontFamily: 'Arial',
  splashColor: Colors.yellow,

  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.dark,
    primarySwatch: Colors.grey,
  ).copyWith(
    secondary: Colors.green,
  ),

  textTheme: const TextTheme(
    headline4: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);
