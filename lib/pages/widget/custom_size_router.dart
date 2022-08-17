import 'package:flutter/material.dart';

class CustomSizeRouter extends PageRouteBuilder {
  Widget? child;
  CustomSizeRouter({required this.child})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) =>
              RotationTransition(
            turns: animation,
            child: child,
          ),
          transitionDuration: const Duration(seconds: 2),
          reverseTransitionDuration: const Duration(seconds: 2),
        );
}
