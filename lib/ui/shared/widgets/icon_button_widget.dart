import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final double? iconSize;
  final void Function()? iconButtonPressed;
  const IconButtonWidget({
    super.key,
    required this.icon,
    required this.iconButtonPressed,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    /// icon button
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        // search icon button pressed
        if (iconButtonPressed != null) {
          iconButtonPressed!();
        } else {
          printing("iconButton pressed (iconButtonPressed == null)");
        }
      },
      /// icon
      icon: Icon(
        icon,
        size: iconSize??25,
        color: Colors.black.withOpacity(0.85),
        shadows: const [
          Shadow(color: Colors.white, offset: Offset(0, 0), blurRadius: 5)
        ],
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.red),
      ),
    );
  }
}
