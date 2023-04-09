import 'package:flutter/material.dart';

class YoutubeRedirect extends StatelessWidget {
  YoutubeRedirect({
    super.key,
  });

  var youTubeRedirectNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("Redirect to Youtube"),
      trailing: ValueListenableBuilder(
          valueListenable: youTubeRedirectNotifier,
          builder: (context, newValue, _) {
            return Switch(
              value: newValue,
              onChanged: (value) {
                //
                newValue = newValue == false
                    ? youTubeRedirectNotifier.value = true
                    : youTubeRedirectNotifier.value = false;
              },
            );
          }),
    );
  }
}
