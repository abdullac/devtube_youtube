import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final void Function() iconButtonPressed;
  const IconButtonWidget({
    super.key,
    required this.icon,
    required this.iconButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.black.withOpacity(0.75),
      onPressed: () {
        // search icon button
        iconButtonPressed;
      },
      icon: Icon(icon),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.red),
      ),
    );
  }
}
