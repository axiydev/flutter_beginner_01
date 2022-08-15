import 'package:flutter/material.dart';
import 'package:flutter_beginner/pages/A/a_page.dart';
import 'package:flutter_beginner/pages/B/b_page.dart';
import 'package:flutter_beginner/pages/C/c_page.dart';

///Named Routing
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/a': (context) => const APage(),
        '/b': (context) => const BPage(),
        '/c': (context) => const CPage(),
      },
      initialRoute: '/a',
    );
  }
}
