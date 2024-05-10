import 'package:app/domain/entities/video_post.dart';
import 'package:app/domain/repositories/video_post_repository.dart';
import 'package:app/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:app/infrastructure/repositories/video_post_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final videoPostRepositoryProvider = Provider<VideoPostRepository>((ref) {
  return VideoPostsRepositoryImpl(
    videoDatasource: LocalVideoDatasource()
    );
});

final revelareProvider = FutureProvider<List<VideoPost>>((ref) async {
  final revelareRepository = ref.watch(videoPostRepositoryProvider);

  final novisVideos = await revelareRepository.getPropesioVideosPerPagina(1);
  return novisVideos;
});