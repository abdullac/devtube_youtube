import 'package:devtube_sample/ui/pages/shorts_pageview_page/page_shorts_pageview.dart';
import 'package:devtube_sample/ui/shared/widgets/iconbuttons_bar.dart';
import 'package:devtube_sample/utils/constants/enums.dart';
import 'package:devtube_sample/utils/functions/add_to_watch_later.dart';
import 'package:flutter/material.dart';

class ShortsIconButtonsBar extends StatelessWidget {
  final int index;
  final dynamic blocState;
  final List<bool?> isWatchLaterList;
  const ShortsIconButtonsBar({
    super.key,
    this.blocState,
    required this.index,
    required this.isWatchLaterList,
  });
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      /// iconButtons bar
      child: IconButtonsBar(
        addlistButtonPressed: () {
          addToWatchLater(blocState.shortsDataList[index].videoId, 
          blocState.shortsDataList[index]!.title
          );
          PageShortsPageview.isWatchLaterListNotifier.notifyListeners();
        },
        height: 60,
        width: double.infinity,
        iconButtonsBarType: IconButtonsBarType.actionButtons,
        isWatchLaterAdded: isWatchLaterList[index],
      ),
    );
  }
}
