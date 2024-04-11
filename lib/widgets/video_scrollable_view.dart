import 'package:app/entities/video_post.dart';
import 'package:app/widgets/video_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos; 

  const VideoScrollableView({
    super.key,
    required this.videos
    });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index)  {
        final VideoPost videoPost = videos [index]; 
        return Stack(
          children: [
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost),
            )
          ],
        );
      },
    );
  }
}

