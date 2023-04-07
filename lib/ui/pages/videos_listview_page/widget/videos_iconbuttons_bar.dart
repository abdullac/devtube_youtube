import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class VideosIconButtonsBar extends StatelessWidget {
  const VideosIconButtonsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(5),
        width: double.infinity,
        height: 60,
        color: Colors.grey.shade700,
        child: const IconButtonsBar(
          height: 0,
          width: double.infinity,
          iconButtonsBarType: IconButtonsBarType.actionButtons,
        ),
      ),
    );
  }
}

