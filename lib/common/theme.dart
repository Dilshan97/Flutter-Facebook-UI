import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: const Color(0xff242525),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff242525),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xff242526),
    selectedItemColor: Color(0xff1B74E4),
    unselectedItemColor: Color(0xffB0B3B8),
    elevation: 0,
    enableFeedback: false,
    type: BottomNavigationBarType.fixed,
    unselectedLabelStyle: TextStyle(
      fontSize: 12,
    ),
  ),
);
