
import 'package:vertical_videos/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name, 
    required this.videoUrl, 
    this.likes = 0, 
    this.views = 0
  });
  
  factory LocalVideoModel.fromJson(Map<String, dynamic> json) => LocalVideoModel(
    name: json['name'] ?? 'No Name',
    videoUrl: json['videoUrl'],
    views: json['views'] ?? 0,
    likes: json['likes'] ?? 0,
    );

  VideoPost tiVideoPostEntity() => VideoPost(
    caption: name, 
    videoUrl: videoUrl,
    likes: likes,
    views: views
    );
}