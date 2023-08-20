import 'package:flutter/material.dart';
import 'package:vertical_videos/domain/entities/video_post.dart';
import 'package:vertical_videos/presentation/widgets/shared/video_bottons.dart';
import 'package:vertical_videos/presentation/widgets/video/fullscreen_player.dart';

class ScrollableVideoView extends StatelessWidget {
  final List<VideoPost> videos;

  const ScrollableVideoView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index){
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(caption: videoPost.caption, videoUrl: videoPost.videoUrl),
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoBottons(video: videoPost)
            )
          ],
        );
      },
      
    );
  }
}
  
