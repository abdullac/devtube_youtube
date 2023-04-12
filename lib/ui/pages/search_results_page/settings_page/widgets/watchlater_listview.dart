
import 'package:devtube_sample/ui/pages/settings_page/widgets/watch_later_item.dart';
import 'package:devtube_sample/utils/constants/lists.dart';
import 'package:flutter/material.dart';

class WatchLaterListView extends StatelessWidget {
  const WatchLaterListView({super.key});

  static var watchLaterListViewNotifier = ValueNotifier(watchLatervideoIdList);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: watchLaterListViewNotifier,
        builder: (context, newValue, _) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: newValue.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => WatchLaterItem(
              index: index,
              watchLaterList: newValue,
            ),
          );
        });
  }
}