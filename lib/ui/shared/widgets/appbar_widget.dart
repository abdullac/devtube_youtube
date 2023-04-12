import 'package:devtube_sample/ui/pages/home_page/widgets/icon_buttonsbar_home.dart';
import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:devtube_sample/utils/constants/navigators.dart';
import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final Size size;
  const AppBarWidget({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    /// appBar
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      title: const Text("DevTube"),
      actions: [
        /// search button
        IconButtonsBarHome(size: Size(50, size.height)),

        /// settings button
        const SettingsIconButton(),
      ],
    );
  }
}

class SettingsIconButton extends StatelessWidget {
  const SettingsIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButtonWidget(
      icon: Icons.settings,
      iconButtonPressed: () {
        // settins icon button pressed
        gotoSettingsPage(context);
        printing("settings button presed");
      },
    );
  }
}
