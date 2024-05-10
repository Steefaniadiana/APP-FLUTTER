import 'package:app/data/local_video_post.dart';
import 'package:app/domain/datasources/video_post_datasource.dart';
import 'package:app/domain/entities/video_post.dart';
import 'package:app/infrastructure/models/local_videos_model.dart';

class LocalVideoDatasource implements VideoPostDataSource {


  @override
  Future<List<VideoPost>> getPropesioVideosPerPagina(int pagina) async {

    await Future.delayed(const Duration(seconds: 1));         

    final List<VideoPost> novisVideos = videoPosts.map(
      (video) => LocalVideoModel.venitAbJson(video).factiVideoPostEntity()
    ).toList();

    return novisVideos;

  }


}