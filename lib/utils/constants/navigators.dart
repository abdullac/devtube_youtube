import 'package:devtube_sample/ui/pages/settings_page/page_settings.dart';
import 'package:devtube_sample/ui/pages/shorts_pageview_page/page_shorts_pageview.dart';
import 'package:devtube_sample/ui/pages/video_player_page/page_vieo_player.dart';
import 'package:devtube_sample/ui/pages/videos_listview_page/page_videos_listview.dart';
import 'package:flutter/material.dart';

gotoVideosListView(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PageVideosListview()));
}

Future<dynamic> gotoSettingsPage(BuildContext context) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const PageSettings()));
}

Future<dynamic> navigateToVideopalyerPage(
        BuildContext context, String? videoId) =>
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => PageVideoPlayer(
        videoId: videoId!,
      ),
    ));

gotoShortsPageView(BuildContext context) {
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const PageShortsPageview()));
}
