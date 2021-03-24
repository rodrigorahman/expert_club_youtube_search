import 'package:equatable/equatable.dart';
import 'package:youtube_search_business/models/youtube_video_model.dart';


class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
  
}

class HomeStateLoading extends HomeState {}

class HomeStateLoadVideos extends HomeState {
  final List<YoutubeVideoModel> youtubeVideos;
  
  const HomeStateLoadVideos([this.youtubeVideos = const []]);

  @override
  List<Object> get props => [youtubeVideos];

}