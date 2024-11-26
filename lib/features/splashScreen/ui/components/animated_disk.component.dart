// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:g4/features/splashScreen/domain/attr.model.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedDisk extends StatelessWidget {
  const AnimatedDisk({
    super.key,
    required this.attrs,
  });

  final AnimatedAttrs attrs;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: attrs.duration,
      left: attrs.left,
      top: attrs.top,
      bottom: attrs.bottom,
      right: attrs.right,
      child: Row(
        children: [
          AnimatedContainer(
            duration: attrs.duration,
            width: attrs.size.width,
            height: attrs.size.height,
            child: ClipPath(
              clipper: CustomShapeClipper(),
              child: Container(
                color: attrs.color,
                child: AnimatedOpacity(
                  opacity: attrs.child != null ? 1 : 0,
                  duration: attrs.duration,
                  child: attrs.child,
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          AnimatedOpacity(
            opacity: attrs.showText ? 1 : 0,
            duration: attrs.duration,
            child: Text(
              attrs.text,
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.blue;
    final path = Path();
    path.addOval(
      const Rect.fromLTWH(30, 20, 20, 24),
    );
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.addOval(
      Rect.fromLTWH(0, 0, size.width, size.height),
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
