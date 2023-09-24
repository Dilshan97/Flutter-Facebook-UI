import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  useMaterial3: true,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.black,
    elevation: 0,
    enableFeedback: false,
    type: BottomNavigationBarType.fixed,
    unselectedLabelStyle: TextStyle(
      fontSize: 12,
    )
  )
);
