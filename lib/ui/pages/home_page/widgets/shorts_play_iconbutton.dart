import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:flutter/material.dart';

class ShortsPlayIconButton extends StatelessWidget {
  const ShortsPlayIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: IconButtonWidget(
        icon: Icons.play_circle,
        iconButtonPressed: () {
          // short play button
        },
      ),
    );
  }
}
