import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';

class VideoListViewPageAppBar extends StatelessWidget {
  const VideoListViewPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 5,
      foregroundColor: Colors.black45,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      leadingWidth: 30,
      /// appBar title
      title: const Text(
        "Videos",
        style: TextStyle(
          shadows: [
            Shadow(
              color: Colors.white,
              blurRadius: 9,
            )
          ],
        ),
      ),
      actions: [
        /// appBar buttons
        IconButtonsBar(
          height: 40,
          width: 100,
          iconButtonsBarType: IconButtonsBarType.utilButtons,
          searchButtonPressed: null,
          filterButtonPressed: () =>
              printing("filter Button pressed videoListView"),
        ),
      ],
    );
  }
}
