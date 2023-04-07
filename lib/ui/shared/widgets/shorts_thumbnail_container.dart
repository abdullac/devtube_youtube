import 'package:flutter/material.dart';

class ShortsThumbnailContainer extends StatelessWidget {
  final double width;
  final double height;
  final dynamic blocState;
  final String thumbnailUrl;
  final bool? isShadowsRadius;
  const ShortsThumbnailContainer({
    super.key,
    required this.width,
    required this.height,
    required this.blocState,
    required this.thumbnailUrl,
    this.isShadowsRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.all(Radius.circular(isBorderRadius == true ? 8 : 0)),
        borderRadius: isShadowsRadius == true
            ? const BorderRadius.all(Radius.circular(5))
            : null,
        boxShadow: isShadowsRadius == true
            ? [
                const BoxShadow(
                  color: Colors.black87,
                  offset: Offset(0, 1),
                  blurRadius: 2,
                  spreadRadius: 2,
                ),
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, -1.3),
                  blurRadius: 0.5,
                  spreadRadius: 0.5,
                ),
              ]
            : null,
        color: Colors.blue,
        image: DecorationImage(
            image: NetworkImage(
              thumbnailUrl,
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
