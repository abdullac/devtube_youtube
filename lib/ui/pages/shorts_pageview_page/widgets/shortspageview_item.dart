import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/ui/pages/shorts_pageview_page/widgets/shorts_iconbuttons_bar.dart';
import 'package:devtube_sample/ui/pages/shorts_pageview_page/widgets/shorts_thumbnail_widget.dart';
import 'package:devtube_sample/ui/pages/shorts_pageview_page/widgets/shorts_title_widget.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  final Size size;
  final HomeState blocState;
  final int index;
  final List<bool?> isWatchLaterList;
  const PageViewItem({
    super.key,
    required this.blocState,
    required this.index,
    required this.size, required this.isWatchLaterList,
  });

  @override
  Widget build(BuildContext context) {
    return blocState.shortsDataList[index] == null
        ? const Center(child: Text("Not availabe this Shorts Details"))
        : Stack(
            children: [
              ShortsThumbnailWidget(
                  blocState: blocState, index: index, size: size),
              ShortsTitleWidget(blocState: blocState, index: index, size: size),
              ShortsIconButtonsBar(blocState: blocState,index: index,isWatchLaterList: isWatchLaterList),
            ],
          );
  }
}
