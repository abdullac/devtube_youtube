import 'package:devtube_sample/ui/pages/settings_page/widgets/watchlater_listview.dart';
import 'package:flutter/material.dart';

class WatchLaterDeleteAll extends StatelessWidget {
  const WatchLaterDeleteAll({
    super.key,
  });

  static var watchLaterDeleteAllTileNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValueListenableBuilder(
            valueListenable: watchLaterDeleteAllTileNotifier,
            builder: (context, newValue, _) {
              return Opacity(
                opacity: newValue == true ? 1.0 : 0.5,
                child: ListTile(
                  title: const Text("Delet all "),
                  trailing: IconButton(
                      onPressed: () {
                        // delete all watch later button
                        WatchLaterListView.watchLaterListViewNotifier.value
                            .clear();
                        WatchLaterListView.watchLaterListViewNotifier
                            .notifyListeners();
                        watchLaterDeleteAllTileNotifier.value =
                            WatchLaterListView
                                    .watchLaterListViewNotifier.value.isEmpty
                                ? false
                                : true;
                        watchLaterDeleteAllTileNotifier.notifyListeners();
                      },
                      icon: const Icon(Icons.delete)),
                ),
              );
            })
      ],
    );
  }
}
