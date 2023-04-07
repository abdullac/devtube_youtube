import 'package:devtube_sample/main.dart';
import 'package:devtube_sample/ui/shared/widgets/shorts_thumbnail_container.dart';
import 'package:devtube_sample/ui/shared/widgets/videos_title_widget.dart';
import 'package:flutter/material.dart';

/// SearchShortsResultsListView
class SearchShortsResultsListView extends StatelessWidget {
  final Size size;
  const SearchShortsResultsListView({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 60 / 100,
      // margin: const EdgeInsets.all(5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, shortsListviewIndex) => SearchShortsResultItem(
            shortsListviewIndex: shortsListviewIndex, size: size),
      ),
    );
  }
}

/// SearchShortsResultItem
class SearchShortsResultItem extends StatelessWidget {
  final Size size;
  final int shortsListviewIndex;
  const SearchShortsResultItem({
    super.key,
    required this.shortsListviewIndex,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width*60/100,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Column(
        children: [
          SizedBox(height: 5,),
          ShortsThumbnailContainer(
            width: size.width,
            height: size.height*50/100,
            blocState: "blocState",
            thumbnailUrl: imageVertical,
            isShadowsRadius: true,
          ),
          SizedBox(height: 5,),
          VideosTitleWidget(
            index: shortsListviewIndex,
            videoTitle: imageTitle,
            textColor: Colors.black87,
          ),
        ],
      ),
    );
  }
}
