 import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/ui/pages/videos_listview_page/page_videos_listview.dart';
import 'package:devtube_sample/utils/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void reachedBottomOrTop(UserScrollNotification notification, BuildContext context,
{required ScrollController scrollController}) {
    if (notification.metrics.extentAfter < 10 &&
        isScrolled == true) {
      // reeched the bottom
      BlocProvider.of<HomeBloc>(context).add(
          GetVideosDataList(pageToken: nextPageToken));
      isScrolled = false;
      scrollController = ScrollController(
          initialScrollOffset:
              notification.metrics.minScrollExtent);
    } else if (notification.metrics.extentBefore < 10 &&
        isScrolled == true) {
      // reeched the top
      BlocProvider.of<HomeBloc>(context).add(
          GetVideosDataList(pageToken: prevPageToken));
      isScrolled = false;
      if (prevPageToken != null) {
        scrollController = ScrollController(
            initialScrollOffset:
                notification.metrics.maxScrollExtent);
      } else {
        scrollController = ScrollController(
            initialScrollOffset:
                notification.metrics.minScrollExtent);
      }
    } else {
      isScrolled = true;
    }
  }

