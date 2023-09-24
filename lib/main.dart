import 'package:facebook_app_ui/common/theme.dart';
import 'package:facebook_app_ui/screens/base.dart';
import 'package:facebook_app_ui/screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      debugShowCheckedModeBanner: false,
      theme: light,
      themeMode: ThemeMode.light,
      routes: {
        '/welcome':(context) => const Welcome(),
        '/base':(context) => const Base()
      },
      initialRoute: '/base',
    );
  }
}