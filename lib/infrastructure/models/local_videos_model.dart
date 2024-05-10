import 'package:app/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name; 
  final String video;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name, 
    required this.video, 
    this.likes = 0, 
    this.views = 0,
  });  

  factory LocalVideoModel.venitAbJson( Map<String, dynamic> json) => LocalVideoModel(
    name: json['name'] ?? 'No name ', 
    video: json['video'],
    likes: json['likes'] ?? 0,
    views: json['views'] ?? 0

  );

  VideoPost factiVideoPostEntity() => VideoPost(
    descriptio: name, 
    videoUrl: video,
    likes: likes,
    views: views, 
  );


}
