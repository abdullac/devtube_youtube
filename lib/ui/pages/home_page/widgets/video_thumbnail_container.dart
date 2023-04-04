import 'package:devtube_sample/ui/pages/home_page/widgets/video_play_iconbutton.dart';
import 'package:flutter/material.dart';

class VideoThumbnailContainer extends StatelessWidget {
  const VideoThumbnailContainer({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -25,
      right: 10,
      left: 10,
      child: Container(
        width: width,
        height: height * 34 / 100,
        // margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
          image: DecorationImage(
              image: NetworkImage(
                "https://i.ytimg.com/vi/Tp_YZNqNBhw/hqdefault.jpg",
              ),
              fit: BoxFit.cover),
        ),
        child: const VideoPlayIconButton(),
      ),
    );
  }
}

