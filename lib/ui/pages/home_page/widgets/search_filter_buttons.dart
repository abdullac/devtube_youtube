import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:flutter/material.dart';

class SearchAndFilterButtons extends StatelessWidget {
  final void Function()? searhButtonPressed;
  final void Function()? filterButtonPressed;
  const SearchAndFilterButtons({
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
          iconButtonPressed: searhButtonPressed,
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
