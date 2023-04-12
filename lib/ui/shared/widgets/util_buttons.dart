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
        // search and filter icon buttons
        SearchIconButton(searhButtonPressed: searhButtonPressed),
        FilterIconButton(filterButtonPressed: filterButtonPressed),
      ],
    );
  }
}

/// search icon button
class SearchIconButton extends StatelessWidget {
  const SearchIconButton({
    super.key,
    required this.searhButtonPressed,
  });

  final void Function()? searhButtonPressed;

  @override
  Widget build(BuildContext context) {
    return IconButtonWidget(
      icon: Icons.search,
      // searh icon button
      iconButtonPressed: () {
        if (searhButtonPressed != null) {
          searhButtonPressed!();
        } else {
          searchButtonPressed(context);
        }
      },
    );
  }
}

/// filter icon button
class FilterIconButton extends StatelessWidget {
  const FilterIconButton({
    super.key,
    required this.filterButtonPressed,
  });

  final void Function()? filterButtonPressed;

  @override
  Widget build(BuildContext context) {
    return filterButtonPressed == null
        ? const SizedBox()
        : IconButtonWidget(
            icon: Icons.dashboard_customize_rounded,
            // filter icon button
            iconButtonPressed: filterButtonPressed,
          );
  }
}
