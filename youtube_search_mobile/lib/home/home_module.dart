import 'package:flutter_modular/flutter_modular.dart';
import 'package:youtube_search_business/repository/youtube/i_youtube_repository.dart';
import 'package:youtube_search_business/repository/youtube/youtube_repository.dart';
import 'package:youtube_search_business/services/youtube/i_youtube_service.dart';
import 'package:youtube_search_business/services/youtube/youtube_service.dart';

import 'controller/home_controller.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<IYoutubeRepository>((i) => YoutubeRepository()),
    Bind.lazySingleton<IYoutubeService>((i) => YoutubeService(i())),
    Bind.factory((i) => HomeController(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (context, args) => HomePage(controller: Modular.get())),
  ];
}
