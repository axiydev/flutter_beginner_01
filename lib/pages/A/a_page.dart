import 'package:flutter/material.dart';
import 'package:flutter_beginner/pages/B/b_page.dart';
import 'package:flutter_beginner/pages/widget/custom_page_route.dart';

class APage extends StatefulWidget {
  const APage({super.key});

  @override
  State<APage> createState() => _APageState();
}

class _APageState extends State<APage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A page'),
        centerTitle: true,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.access_alarm)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notification_add)),
        ],
      ),
      // drawer: const Drawer(),
      // endDrawer: const Drawer(),
      body: Center(
        child: Text(
          'A Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, CustomAnimationRoute(child: const BPage()));
        },
        child: const Text('B'),
      ),
    );
  }
}
