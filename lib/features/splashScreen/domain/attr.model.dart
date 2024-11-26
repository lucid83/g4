import 'package:flutter/material.dart';

class AnimatedAttrs {
  final Size size;
  final Duration duration;
  final String text;
  final Color color;
  final double? left;
  final double? right;
  final double? bottom;
  final double? top;
  final bool showText;
  final Widget? child;

  AnimatedAttrs({
    required this.size,
    this.duration = const Duration(milliseconds: 400),
    this.text = "",
    this.color = Colors.transparent,
    this.left,
    this.right,
    this.bottom,
    this.top,
    this.child,
    this.showText = false,
  });
}
