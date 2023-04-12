 import 'package:devtube_sample/core/providers/bloc/home/home_bloc.dart';
import 'package:devtube_sample/utils/constants/lists.dart';

List<bool?> makeIsWatchLaterListShortsPageview(List<bool?> newValue, HomeState state) {
    newValue = state.shortsDataList.map((e) {
      if(e!=null&&e.videoId != null) {
        return watchLatervideoIdList.contains(e.videoId);
      }else{
        return null;
      }
    } 
    ).toList();
    return newValue;
  }