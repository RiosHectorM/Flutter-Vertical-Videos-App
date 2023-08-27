import 'package:vertical_videos/domain/entities/video_post.dart';

abstract class VideoPostRepositorie{
  
  Future <List<VideoPost>> getFavoritesVideosByUser( String userID);
  Future <List<VideoPost>> getTrendingVideosByPage( int page);
}