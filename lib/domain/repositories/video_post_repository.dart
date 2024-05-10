
import 'package:app/domain/entities/video_post.dart';

abstract class VideoPostRepository {
  
  Future<List<VideoPost>> getPropesioVideosPerPagina( int pagina ); 
  
}