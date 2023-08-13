import 'package:tok_tik_datasources/domain/datasources/video_post_datasources.dart';
import 'package:tok_tik_datasources/domain/entities/video_post.dart';
import 'package:tok_tik_datasources/infrastructure/models/local_video_model.dart';
import 'package:tok_tik_datasources/shared/data/local_video_posts.dart';

class LocalVideoDatasource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendigVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
