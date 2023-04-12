import 'package:flutter/material.dart';

class ShortsPageviewAppbar extends StatelessWidget {
  const ShortsPageviewAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    /// appBar
    return AppBar(
      titleSpacing: 1,
      foregroundColor: Colors.black45,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      /// appBar title
      title: const Text(
        "Shorts",
        style: TextStyle(
          shadows: [
            Shadow(
              color: Colors.white,
              blurRadius: 9,
            )
          ],
        ),
      ),
    );
  }
}