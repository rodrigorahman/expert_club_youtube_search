import 'package:bloc/bloc.dart';
import 'package:youtube_search_web/home/controller/home_state.dart';

import 'package:youtube_search_business/services/youtube/i_youtube_service.dart';

class HomeController extends Cubit<HomeState> {
  
  final IYoutubeService _service;

  HomeController(
    this._service,
  ) : super(HomeStateLoading());

  Future<void> loadYoutubeVideos() async {
    final videos = await _service.findAll();
    emit(HomeStateLoadVideos(videos));
  }

}
