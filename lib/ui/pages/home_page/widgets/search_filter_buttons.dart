
import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:flutter/material.dart';

class SearchAndFilterButtons extends StatelessWidget {
  const SearchAndFilterButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButtonWidget(
          icon: Icons.search,
          iconButtonPressed: () {
            // voleum icon button
          },
        ),
        IconButtonWidget(
          icon: Icons.dashboard_customize_rounded,
          iconButtonPressed: () {
            // filter icon button
          },
        ),
      ],
    );
  }
}


