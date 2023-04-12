import 'package:devtube_sample/ui/pages/settings_page/widgets/watchlater_listview.dart';
import 'package:devtube_sample/utils/constants/lists.dart';
import 'package:flutter/material.dart';

class WatchLaterItem extends StatelessWidget {
  final int index;
  final List<String> watchLaterList;
  const WatchLaterItem({
    super.key,
    required this.index,
    required this.watchLaterList,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(watchLaterList[index],overflow: TextOverflow.fade,maxLines: 2),
      trailing: IconButton(
        onPressed: () {
          // delete watch later item button
          watchLaterList.removeAt(index);
          watchLatervideoIdList.removeAt(index);
          WatchLaterListView.watchLaterListViewNotifier.notifyListeners();
        },
        icon: const Icon(Icons.delete_forever_sharp),
      ),
    );
  }
}