import 'package:tok_tik_datasources/domain/datasources/video_post_datasources.dart';
import 'package:tok_tik_datasources/domain/entities/video_post.dart';
import 'package:tok_tik_datasources/domain/repositories/video_posts_repositories.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videosDatasource;

  VideoPostsRepositoryImpl({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendigVideosByPage(int page) {
    return videosDatasource.getTrendigVideosByPage(page);
  }
}
