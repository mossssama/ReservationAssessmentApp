import 'package:flutter/material.dart';

class FlipperWidget extends StatelessWidget {
  final Widget child;

  const FlipperWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationX(3.14159),
      child: child,
    );
  }
}
