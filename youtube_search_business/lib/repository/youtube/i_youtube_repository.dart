import 'package:youtube_search_business/models/youtube_video_model.dart';

abstract class IYoutubeRepository {
  Future<List<YoutubeVideoModel>> findAll();
}