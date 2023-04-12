import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/core/providers/bloc/search/search_bloc.dart';
import 'package:devtube_sample/core/providers/bloc/shorts_video_player/shorts_video_player_bloc.dart';
import 'package:devtube_sample/ui/pages/search_results_page/widgets/search_results_appbar.dart';
import 'package:devtube_sample/ui/pages/shorts_pageview_page/widgets/shorts_thumbnail_widget.dart';
import 'package:devtube_sample/utils/constants/lists.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

callVideosDataList(BuildContext context) {
  BlocProvider.of<HomeBloc>(context)
      .add(const GetVideosDataList(pageToken: null));
}

callShortsDataList(BuildContext context) {
  BlocProvider.of<HomeBloc>(context).add(const GetShortsDataList());
}

callSearch(BuildContext context) {
  BlocProvider.of<SearchBloc>(context).add(Search(
      searchWord: SearchResultsAppBar.searchEditingController.text,
      filterPriorityList: filterItemSelectedList));
}

void callPlayShortsVideo(BuildContext context) {
  // return BlocProvider.of<ShortsVideoPlayerBloc>(context)
  //     .add(PlayShortsVideo(shortsVideoId: ShortsThumbnailWidget.shortVideoId));
}
