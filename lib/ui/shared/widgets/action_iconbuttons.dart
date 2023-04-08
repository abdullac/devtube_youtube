import 'package:devtube_sample/ui/shared/widgets/icon_button_widget.dart';
import 'package:flutter/material.dart';

class ActionIconbuttons extends StatelessWidget {
  final void Function()? voleumButtonPressed;
  final void Function()? addlistButtonPressed;
  final void Function()? watchedcountButtonPressed;
  final void Function()? commentButtonPressed;
  const ActionIconbuttons({
    super.key,
    this.voleumButtonPressed,
    this.addlistButtonPressed,
    this.watchedcountButtonPressed,
    this.commentButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButtonWidget(
          icon: Icons.volume_off,
          // voleum icon button
          iconButtonPressed: voleumButtonPressed,
        ),
        IconButtonWidget(
          icon: Icons.playlist_add_rounded,
          // addToLibrary icon button
          iconButtonPressed: watchedcountButtonPressed,
        ),
        IconButtonWidget(
          icon: Icons.favorite,
          // favorite icon button
          iconButtonPressed: addlistButtonPressed,
        ),
        IconButtonWidget(
          icon: Icons.comment,
          // coment icon button
          iconButtonPressed: voleumButtonPressed,
        ),
      ],
    );
  }
}
