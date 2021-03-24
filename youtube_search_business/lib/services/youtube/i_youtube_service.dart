import 'package:youtube_search_business/models/youtube_video_model.dart';

abstract class IYoutubeService {
  Future<List<YoutubeVideoModel>> findAll();
}