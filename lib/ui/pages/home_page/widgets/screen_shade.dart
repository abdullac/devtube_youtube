import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ScreenShade extends StatelessWidget {
  final Size size;
  final ScreenShadeRotate screenShadeRotate;
  final AlignmentGeometry alignment;
  const ScreenShade({
    super.key,
    required this.size,
    required this.screenShadeRotate,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Transform.rotate(
        angle: screenShadeRotate == ScreenShadeRotate.top
            ? 0 * math.pi / 180
            : screenShadeRotate == ScreenShadeRotate.right
                ? 90 * math.pi / 180
                : screenShadeRotate == ScreenShadeRotate.bottom
                    ? 180 * math.pi / 180
                    : 270 * math.pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              color: Colors.black,
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  // Colors.black87,
                  Colors.black.withOpacity(0.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
        ),
      ),
    );
  }
}