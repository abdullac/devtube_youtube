import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      title: const Text("DevTube"),
      actions: [
        IconButtonWidget(
          icon: Icons.settings,
          iconButtonPressed: () {
            // voleum icon button
          },
        ),
      ],
    );
  }
}
