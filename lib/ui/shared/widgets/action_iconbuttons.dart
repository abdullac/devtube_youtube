import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';

class ActionIconbuttons extends StatelessWidget {
  final void Function()? voleumButtonPressed;
  final void Function()? addlistButtonPressed;
  final void Function()? watchedcountButtonPressed;
  final void Function()? commentButtonPressed;
  final bool? isWatchLaterAdded;
  const ActionIconbuttons({
    super.key,
    this.voleumButtonPressed,
    this.addlistButtonPressed,
    this.watchedcountButtonPressed,
    this.commentButtonPressed,
    this.isWatchLaterAdded,
  });

  static var volumeButtonNotifier = ValueNotifier(VolumeButtonIcon.off);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ValueListenableBuilder(
            valueListenable: volumeButtonNotifier,
            builder: (context, volumeIconvalue, _) {
              return IconButtonWidget(
                  icon: volumeIconvalue == VolumeButtonIcon.on
                      ? Icons.volume_up
                      : Icons.volume_off,
                  // voleum icon button
                  iconButtonPressed: () {
                    volumeButtonNotifier.value =
                        volumeIconvalue == VolumeButtonIcon.on
                            ? VolumeButtonIcon.off
                            : VolumeButtonIcon.on;
                    // voleumButtonPressed();
                  });
            }),
        IconButtonWidget(
          icon: isWatchLaterAdded == true
              ? Icons.playlist_add_check
              : Icons.playlist_add_rounded,
          iconButtonPressed: () {
              // addToLibrary icon button pressed
            if (addlistButtonPressed != null) {
              addlistButtonPressed!();
            } else {
              printing("connot add to watch later list");
            }
          },
        ),
        IconButtonWidget(
          icon: Icons.favorite,
          // favorite icon button
          iconButtonPressed: watchedcountButtonPressed,
        ),
        IconButtonWidget(
          icon: Icons.comment,
          // coment icon button
          iconButtonPressed: voleumButtonPressed,
        ),
      ],
    );
  }
}
