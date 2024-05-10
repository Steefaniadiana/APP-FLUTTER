
import 'package:app/domain/entities/video_post.dart';

abstract class VideoPostDataSource {
  Future<List<VideoPost>> getPropesioVideosPerPagina( int pagina ); 
  
}