import 'package:flutter/material.dart';

class ShortsTitleContainer extends StatelessWidget {
  const ShortsTitleContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: height * 15 / 100,
        width: width,
        color: Colors.purple.withOpacity(0.5),
        child: const Text(
          "Gopwe0orpwe rporwepirpwoei  poriwp oirpwoe weipoeirp priwpo  rpwieporiwpoeppoweirpp wepopiwri  weporiw poirwpoeir riwerpo ",
          overflow: TextOverflow.fade,
        ),
      ),
    );
  }
}

