import 'package:bloc/bloc.dart';
import 'package:youtube_search_business/services/youtube/i_youtube_service.dart';

import 'home_state.dart';

class HomeController extends Cubit<HomeState> {
  IYoutubeService _service;

  HomeController(this._service) : super(HomeStateLoading());

  Future<void> loadYoutuVideos() async {
    try {
      final videos = await _service.findAll();
      emit(HomeStateLoadVideos(videos));
    } catch (e) {
      emit(HomeStateError());
    }
  }
}
