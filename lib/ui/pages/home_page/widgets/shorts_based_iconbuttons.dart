import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:flutter/material.dart';

class ShortsBasedIconbuttons extends StatelessWidget {
  const ShortsBasedIconbuttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButtonWidget(
          icon: Icons.volume_off,
          iconButtonPressed: () {
            // voleum icon button
          },
        ),
        IconButtonWidget(
          icon: Icons.playlist_add_rounded,
          iconButtonPressed: () {
            // addToLibrary icon button
          },
        ),
        IconButtonWidget(
          icon: Icons.favorite,
          iconButtonPressed: () {
            // favorite icon button
          },
        ),
        IconButtonWidget(
          icon: Icons.comment,
          iconButtonPressed: () {
            // coment icon button
          },
        ),
      ],
    );
  }
}

