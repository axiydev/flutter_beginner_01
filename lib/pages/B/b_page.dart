import 'package:flutter/material.dart';
import 'package:flutter_beginner/pages/C/c_page.dart';
import 'package:flutter_beginner/pages/widget/custom_page_animation.dart';

class BPage extends StatefulWidget {
  const BPage({super.key});

  @override
  State<BPage> createState() => _BPageState();
}

class _BPageState extends State<BPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'B Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context, CustomPageRouteBuilder(child: const CPage()));
          },
          label: const Text('C Page')),
    );
  }
}
