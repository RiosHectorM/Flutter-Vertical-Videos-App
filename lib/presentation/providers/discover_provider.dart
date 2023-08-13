import 'package:flutter/widgets.dart';
import 'package:vertical_videos/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier{

  bool initialLoading = true;
  List<VideoPost> videos = [];
  Future <void> loadNextPage() async {
    //todo: Cargar videos

    notifyListeners();
    }

}