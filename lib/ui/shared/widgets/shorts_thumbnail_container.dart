import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:flutter/material.dart';

class ShortsThumbnailContainer extends StatelessWidget {
  final double width;
  final double height;
  final String? thumbnailUrl;
  final bool? isShadowsRadius;
  final void Function()? iconButtonPressed;
  const ShortsThumbnailContainer({
    super.key,
    required this.width,
    required this.height,
    required this.thumbnailUrl,
    this.isShadowsRadius,
    this.iconButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
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
            image: thumbnailUrl == null
                ? null
                : DecorationImage(
                    image: NetworkImage(
                      thumbnailUrl!,
                    ),
                    fit: BoxFit.cover),
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          top: 0,
          bottom: 0,
          child: IconButtonWidget(
            icon: Icons.play_circle_outline_sharp,
            iconSize: 50,
            iconButtonPressed: iconButtonPressed,
          ),
        ),
        // Align(
        //   alignment: Alignment.bottomLeft,
        //   child: IconButtonWidget(
        //     icon: Icons.play_circle_outline_sharp,
        //     iconSize: 50,
        //     iconButtonPressed: iconButtonPressed,
        //   ),
        // ),
      ],
    );
  }
}
