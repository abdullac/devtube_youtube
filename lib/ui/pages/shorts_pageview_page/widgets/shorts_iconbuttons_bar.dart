import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class ShortsIconButtonsBar extends StatelessWidget {
  const ShortsIconButtonsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomCenter,
      child: IconButtonsBar(
          height: 60,
          width: double.infinity,
          iconButtonsBarType: IconButtonsBarType.actionButtons),
    );
  }
}
