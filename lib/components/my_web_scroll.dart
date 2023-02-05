import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class MyWebScroll extends StatelessWidget {
  final ScrollController controller;

  final Widget child;

  final int? scrollOffset;
  final int? animationDuration;
  final Curve? curve;

  const MyWebScroll(
      {Key? key,
      required this.controller,
      required this.child,
      this.scrollOffset,
      this.animationDuration,
      this.curve})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebSmoothScroll(
      controller: controller,
      child: SingleChildScrollView(
          controller: controller,
          physics: NeverScrollableScrollPhysics(),
          child: child),
      animationDuration: animationDuration ?? 600,
      curve: curve ?? Curves.easeInOutCubicEmphasized,
      scrollOffset: scrollOffset ?? 80,
    );
  }
}
