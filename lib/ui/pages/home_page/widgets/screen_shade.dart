import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ScreenShade extends StatelessWidget {
  final Size size;
  final ScreenShadeRotate screenShadeRotate;
  final AlignmentGeometry alignment;
  final void Function()? shadeOnTap;
  const ScreenShade({
    super.key,
    required this.size,
    required this.screenShadeRotate,
    required this.alignment, this.shadeOnTap,
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
        child: InkWell(
          onTap: () {
            if(shadeOnTap != null){
              shadeOnTap!();
            }
          },
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                color: Colors.black,
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black.withOpacity(0.0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
          ),
        ),
      ),
    );
  }
}
