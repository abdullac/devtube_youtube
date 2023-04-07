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
    return IconButton(
      // color: Colors.black.withOpacity(0.75),
      onPressed: () {
        // search icon button
        if (iconButtonPressed != null) {
          iconButtonPressed!();
        } else {
          print("iconButton pressed (iconButtonPressed == null)");
        }
      },
      icon: Icon(
        icon,
        size: iconSize,
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
