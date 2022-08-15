import 'package:flutter/material.dart';
import 'package:flutter_beginner/router/my_router.dart';

///Generated Routing
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
      onUnknownRoute: (settings) => MyRouter.onUnknownError(settings),
      onGenerateRoute: (settings) => MyRouter.onGenerateRoute(settings),
      initialRoute: MyRouter.initialRoute,
    );
  }
}
