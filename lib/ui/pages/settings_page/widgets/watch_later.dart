import 'package:flutter/material.dart';

class WatchLater extends StatelessWidget {
  const WatchLater({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text("Watch later"),
      children: [
        WatchLaterDeleteAll(),
        WatchLaterListView(),
      ],
    );
  }
}

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

class WatchLaterListView extends StatelessWidget {
  const WatchLaterListView({super.key});

  static var watchLaterListViewNotifier = ValueNotifier(watchLaterItems);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: watchLaterListViewNotifier,
        builder: (context, newValue, _) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: newValue.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => WatchLaterDeleteItem(
              index: index,
              watchLaterList: newValue,
            ),
          );
        });
  }
}

class WatchLaterDeleteItem extends StatelessWidget {
  final int index;
  final List<String> watchLaterList;
  const WatchLaterDeleteItem({
    super.key,
    required this.index,
    required this.watchLaterList,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(watchLaterList[index]),
      trailing: IconButton(
        onPressed: () {
          // delete watch later item button
          watchLaterList.removeAt(index);
          WatchLaterListView.watchLaterListViewNotifier.notifyListeners();
        },
        icon: const Icon(Icons.delete_forever_sharp),
      ),
    );
  }
}

List<String> watchLaterItems = [
  "dasdsadsaa",
  "dadadadada",
];
