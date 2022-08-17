import 'package:flutter/material.dart';
import 'package:flutter_beginner/pages/D/d_page.dart';
import 'package:flutter_beginner/pages/widget/custom_size_router.dart';

class CPage extends StatefulWidget {
  const CPage({super.key});

  @override
  State<CPage> createState() => _CPageState();
}

class _CPageState extends State<CPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'C Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(CustomSizeRouter(child: const DPage()));
        },
        child: const Text('D'),
      ),
    );
  }
}
