import 'package:devtube_sample/ui/pages/settings_page/widgets/watchlater_delete_all_tile.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/watchlater_listview.dart';
import 'package:flutter/material.dart';

class WatchLater extends StatelessWidget {
  const WatchLater({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text("Watch later"),
      children: [
        /// watch later sections
        WatchLaterDeleteAll(),
        WatchLaterListView(),
      ],
    );
  }
}




