import 'package:devtube_sample/utils/constants/navigators.dart';
import 'package:flutter/material.dart';

class VideosTitleWidget extends StatelessWidget {
  const VideosTitleWidget({
    super.key,
    required this.videoTitle,
    this.backgroundColor,
    this.textColor,
    required this.size,
  });

  final Size size;
  final String? videoTitle;
  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        /// navigate to vieoListview page
        gotoVideosListView(context);
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        width: double.infinity,
        height: size.height * 10 / 100,
        color: backgroundColor,
        child: Text(
          /// video title
          videoTitle ?? "title not availabe",
          overflow: TextOverflow.fade,
          style: TextStyle(color: textColor ?? Colors.white70),
        ),
      ),
    );
  }
}
