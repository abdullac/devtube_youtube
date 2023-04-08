import 'package:devtube_sample/ui/shared/widgets/videos_title_widget.dart';
import 'package:flutter/material.dart';

class ShortsTitleWidget extends StatelessWidget {
  const ShortsTitleWidget({
    super.key,
    required this.blocState,
    required this.index,
    required this.size,
  });

  final Size size;
  final dynamic blocState;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: VideosTitleWidget(
        size: size,
        videoTitle: blocState.shortsDataList[index]!.title,
      ),
    );
  }
}
