import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:flutter/material.dart';

class VideoPlayIconButton extends StatelessWidget {
  final void Function() iconButtonPressed;
  final double? iconSize;
  const VideoPlayIconButton({
    super.key,
    required this.iconButtonPressed,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButtonWidget(
        icon: Icons.play_circle_outline_sharp,
        iconSize: iconSize,
        iconButtonPressed: () {
          // play button pressed
          iconButtonPressed();
        },
      ),
    );
  }
}
