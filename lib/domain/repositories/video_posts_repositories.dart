

import 'package:tok_tik_datasources/domain/entities/video_post.dart';

abstract class VideoPostRepository{
  Future<List<VideoPost>> getFavoriteVideosByUser(String  userID);

  Future<List<VideoPost>> getTrendigVideosByPage(int page);
}
