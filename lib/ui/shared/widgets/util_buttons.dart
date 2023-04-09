import 'package:devtube_sample/ui/pages/home_page/widgets/icon_buttonsbar_home.dart';
import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:devtube_sample/utils/functions/goto_search_page.dart';
import 'package:flutter/material.dart';

class UtilIconButtons extends StatelessWidget {
  final void Function()? searhButtonPressed;
  final void Function()? filterButtonPressed;
  const UtilIconButtons({
    super.key,
    required this.searhButtonPressed,
    required this.filterButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButtonWidget(
          icon: Icons.search,
          // searh icon button
          iconButtonPressed: () {
            if (searhButtonPressed != null) {
              searhButtonPressed!();
            } else {
              searchButtonPressed(context);
            }
          },
        ),
        IconButtonWidget(
          icon: Icons.dashboard_customize_rounded,
          // filter icon button
          iconButtonPressed: filterButtonPressed,
        ),
      ],
    );
  }
}
