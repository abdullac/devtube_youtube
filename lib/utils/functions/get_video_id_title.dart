String? getShortsId(dynamic shortsBlocState, int shortsListviewIndex) {
  var shortsItem = shortsBlocState.searchShortsListResults[shortsListviewIndex];
  if (shortsItem != null && shortsItem.resultDataId != null) {
    return shortsItem!.resultDataId!.videoId;
  }
  return null;
}

String? getShortsTitle(dynamic shortsBlocState, int shortsListviewIndex) {
  var shortsItem = shortsBlocState.searchShortsListResults[shortsListviewIndex];
  if (shortsItem != null &&
      shortsItem.resultDataId != null &&
      shortsItem.resultDetails != null) {
    return shortsItem.resultDetails.title;
  }
  return null;
}
