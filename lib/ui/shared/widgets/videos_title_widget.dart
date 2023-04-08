import 'package:flutter/material.dart';

class VideosTitleWidget extends StatelessWidget {
  const VideosTitleWidget({
    super.key,
    // required this.blocState,
    // required this.index,
    required this.videoTitle,
    this.backgroundColor,
    this.textColor, required this.size,
  });

  // final dynamic blocState;
  // final int index;
  final Size size;
  final String? videoTitle;
  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      height: size.height* 10/100,
      // color: Colors.teal.shade700,
      color: backgroundColor,
      child: Text(
        videoTitle?? "title not availabe",
        // blocState.videosDataList![index]!.videoDetails!.title,
        // "gdfgd g fdgdd ffgf fhfghfghfghhfhfhfghh gfh hfghffhhfh hgfh",
        overflow: TextOverflow.fade,
        style: TextStyle(color: textColor ?? Colors.white70),
      ),
    );
  }
}



//
          // blocState.videosDataList![index]!.videoDetails!.title,