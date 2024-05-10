import 'package:app/domain/datasources/video_post_datasource.dart';
import 'package:app/domain/entities/video_post.dart';
import 'package:app/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {   
      final VideoPostDataSource videoDatasource;

      VideoPostsRepositoryImpl ({
        required this.videoDatasource
      });

  
  @override
  Future<List<VideoPost>> getPropesioVideosPerPagina(int pagina) {

    
  return  videoDatasource.getPropesioVideosPerPagina(pagina);
  }
}
