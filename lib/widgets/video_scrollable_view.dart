import 'package:app/entities/video_post.dart';
import 'package:flutter/material.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos; 

  const VideoScrollableView({
    super.key,
    required this.videos
    });

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        Container( color: Colors.red ),
        Container( color: Colors.blue ),
        Container( color: Colors.yellow ),
        Container( color: Colors.purple ),
        Container( color: Colors.pink ),
        Container( color: Colors.teal ),
      ],
    );
  }
}