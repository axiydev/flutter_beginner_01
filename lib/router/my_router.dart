import 'package:flutter/material.dart';
import 'package:flutter_beginner/pages/A/a_page.dart';
import 'package:flutter_beginner/pages/B/b_page.dart';
import 'package:flutter_beginner/pages/C/c_page.dart';
import 'package:flutter_beginner/pages/error/error_page.dart';

class MyRouter {
  static const String initialRoute = '/a';

  static onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/a':
        return MaterialPageRoute(builder: (context) => const APage());
      case '/b':
        return MaterialPageRoute(builder: (context) => const BPage());
      case '/c':
        return MaterialPageRoute(builder: (context) => const CPage());
      default:
        return MaterialPageRoute(builder: (context) => const ErrorPage());
    }
  }

  static onUnknownError(RouteSettings setting) {
    return MaterialPageRoute(builder: (context) => const ErrorPage());
  }
}
