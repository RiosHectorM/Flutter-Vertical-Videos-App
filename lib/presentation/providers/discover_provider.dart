import 'package:flutter/widgets.dart';
import 'package:vertical_videos/domain/entities/video_post.dart';
import 'package:vertical_videos/infrastructure/models/local_video_model.dart';
import 'package:vertical_videos/shared/data/local_videos_posts.dart';

class DiscoverProvider extends ChangeNotifier{

  bool initialLoading = true;
  List<VideoPost> videos = [];


  Future <void> loadNextPage() async {
    
    //await Future.delayed( const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map(
      (video)=> LocalVideoModel.fromJson(video).toVideoPostEntity()
    ).toList();

    videos.addAll( newVideos);
    initialLoading = false;
    notifyListeners();
    }

}