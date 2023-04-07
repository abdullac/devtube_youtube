import 'package:flutter/material.dart';

class VideosTitleWidget extends StatelessWidget {
  const VideosTitleWidget({
    super.key,
    // required this.blocState,
    required this.index,
    required this.videoTitle,
    this.backgroundColor,
    this.textColor,
  });

  // final dynamic blocState;
  final int index;
  final String videoTitle;
  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(5),
        width: double.infinity,
        // color: Colors.teal.shade700,
        color: backgroundColor,
        child: Text(
          videoTitle,
          // blocState.videosDataList![index]!.videoDetails!.title,
          // "gdfgd g fdgdd ffgf fhfghfghfghhfhfhfghh gfh hfghffhhfh hgfh",
          overflow: TextOverflow.fade,
          style: TextStyle(color: textColor ?? Colors.white70),
        ),
      ),
    );
  }
}



//
          // blocState.videosDataList![index]!.videoDetails!.title,