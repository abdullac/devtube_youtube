
import 'package:devtube_sample/ui/shared/widgets/videos_title_widget.dart';
import 'package:devtube_sample/utils/constants/strings.dart';
import 'package:flutter/material.dart';

class VideoTitleHome extends StatelessWidget {
  const VideoTitleHome({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: VideosTitleWidget(
            videoTitle: imageTitle, size: Size(width, height)),
      ),
    );
  }
}
