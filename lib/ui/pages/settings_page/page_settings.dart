import 'package:devtube_sample/ui/pages/settings_page/widgets/color_theme_selection.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/preferences.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/priority.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/watch_later.dart';
import 'package:devtube_sample/ui/pages/settings_page/widgets/youtube_redirect.dart';
import 'package:flutter/material.dart';

List<bool> selections = List.generate(1, (_) => false);

class PageSettings extends StatelessWidget {
  const PageSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// appBar
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: SafeArea(
        child: ValueListenableBuilder(
      valueListenable: ColorThemeSeletion.selectColorThemeNotifier,
      builder: (context,newValue,_) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  /// settings page sections
                  const Priority(),
                  const Preferences(),
                  YoutubeRedirect(),
                  const ColorThemeSeletion(),
                  const WatchLater(),
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
