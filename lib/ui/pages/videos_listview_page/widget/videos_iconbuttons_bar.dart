import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class VideosIconButtonsBar extends StatelessWidget {
  final Size size;
  final bool isWatchLaterAdded;
  final void Function() addlistButtonPressed;
  const VideosIconButtonsBar({
    super.key,
    required this.size,
    required this.isWatchLaterAdded,
    required this.addlistButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: size.width,
      height: 60,
      child: IconButtonsBar(
        height: 0,
        width: double.infinity,
        iconButtonsBarType: IconButtonsBarType.actionButtons,
        isWatchLaterAdded: isWatchLaterAdded,
        addlistButtonPressed: () {
          //  add wacth later button pressed
          addlistButtonPressed();
        },
      ),
    );
  }
}

