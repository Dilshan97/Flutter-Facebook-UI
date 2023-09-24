import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: const Color(0xff242525),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff242525),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.black,
    elevation: 0,
    enableFeedback: false,
    type: BottomNavigationBarType.fixed,
    unselectedLabelStyle: TextStyle(
      fontSize: 12,
    ),
  ),
);
