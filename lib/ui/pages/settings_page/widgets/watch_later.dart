
import 'package:flutter/material.dart';

class WatchLater extends StatelessWidget {
  const WatchLater({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text("Watch later"),
      children: [WatchLaterDeleteAll(), WatchLaterDelete()],
    );
  }
}

class WatchLaterDeleteAll extends StatelessWidget {
  const WatchLaterDeleteAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text("Delet all "),
          trailing: IconButton(
              onPressed: () {
                // delete all watch later button
              },
              icon: const Icon(Icons.delete)),
        )
      ],
    );
  }
}

class WatchLaterDelete extends StatelessWidget {
  const WatchLaterDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: watchLaterItem.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>  WatchLaterDeleteItem(index: index),
    );
  }
}

class WatchLaterDeleteItem extends StatelessWidget {
  final int index;
  const WatchLaterDeleteItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(watchLaterItem[index]),
      trailing: IconButton(onPressed: (){
        // delete watch later item button
      }, icon: const Icon(Icons.delete_forever_sharp),),
    );
  }
}

List<String> watchLaterItem = [
  "dasdsadsaa",
  "dadadadada",
];
