import 'package:flutter/material.dart';

class ShortsThumbnailWidget extends StatelessWidget {
  const ShortsThumbnailWidget({
    super.key,
    required this.blocState,
    required this.index,
  });

  final dynamic blocState;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.indigo,
          image: DecorationImage(
              image: NetworkImage(
                blocState.shortsDataList[index].thumbnailUrlList[0]
                    ["url"],
              ),
              fit: BoxFit.cover)),
    );
  }
}
