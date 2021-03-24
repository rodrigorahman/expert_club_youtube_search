import 'package:dio/dio.dart';
import 'package:youtube_search_business/models/youtube_video_model.dart';

import './i_youtube_repository.dart';

class YoutubeRepository implements IYoutubeRepository {
  @override
  Future<List<YoutubeVideoModel>> findAll() async {
    final dio = Dio();
    String googleKey =
        const String.fromEnvironment('GOOGLE_KEY', defaultValue: '');
    final response = await dio.get(
      'https://www.googleapis.com/youtube/v3/search?part=snippet&key=$googleKey&channelId=UC5hvPObwya8kzWWB-wmVlXg&order=date&maxResults=50',
    );

    final items = response.data?['items'] ?? [];

    return items
        .map<YoutubeVideoModel>(
          (v) => YoutubeVideoModel(
              id: v['id']['videoId'],
              title: v['snippet']['title'],
              thumbnail: v['snippet']['thumbnails']['medium']['url']),
        )
        .toList();
  }
}
