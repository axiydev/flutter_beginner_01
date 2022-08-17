import 'package:flutter/material.dart';

class DPage extends StatefulWidget {
  const DPage({super.key});

  @override
  State<DPage> createState() => _DPageState();
}

class _DPageState extends State<DPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'D Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
