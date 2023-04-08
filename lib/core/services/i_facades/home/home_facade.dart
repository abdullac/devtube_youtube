import 'package:devtube_sample/core/models/home/shorts/shorts_data.dart';
import 'package:devtube_sample/core/models/home/videos/videos_data.dart';

abstract class HomeFacade {
  Future<ShortsData?> getShortsData();
  Future<VideosData?> getVideosData();
  Future<List<VideosData?>> getVideosDataList();
  Future<List<ShortsData?>> getShortsDataList();
}
