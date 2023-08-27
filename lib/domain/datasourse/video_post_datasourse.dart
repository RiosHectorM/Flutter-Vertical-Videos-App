import 'package:vertical_videos/domain/entities/video_post.dart';

abstract class VideoPostDatasourse {
  
  Future <List<VideoPost>> getFavoritesVideosByUser( String userID);
  Future <List<VideoPost>> getTrendingVideosByPage( int page);
}