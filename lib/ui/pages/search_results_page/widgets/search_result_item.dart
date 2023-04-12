import 'package:devtube_sample/ui/pages/search_results_page/widgets/search_shorts_resultitem.dart';
import 'package:devtube_sample/ui/pages/search_results_page/widgets/search_videos_resultitem.dart';
import 'package:flutter/material.dart';

/// SearchResultItem
class SearchResultItem extends StatelessWidget {
  final int index;
  final Size size;
  final dynamic blocState;
  final List<bool?> isWatchLaterListVideos;
  final List<bool?> isWatchLaterListShorts;
  const SearchResultItem({
    super.key,
    required this.index,
    required this.blocState,
    required this.size,
    required this.isWatchLaterListVideos,
    required this.isWatchLaterListShorts,
  });

  @override
  Widget build(BuildContext context) {
    return (index + 1) % 3 != 0
        ? SearchVideosResultItem(
            index: index,
            size: size,
            blocState: blocState,
            isWatchLaterListVideos: isWatchLaterListVideos,
          )
        : SearchShortsResultsListView(
            index: index,
            size: size,
            blocState: blocState,
            isWatchLaterListShorts: isWatchLaterListShorts,
          );
  }
}

