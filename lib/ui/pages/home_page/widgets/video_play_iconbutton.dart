import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:flutter/material.dart';

class VideoPlayIconButton extends StatelessWidget {
  const VideoPlayIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButtonWidget(
          icon: Icons.play_circle_outline_sharp, iconButtonPressed: () {}),
    );
  }
}
