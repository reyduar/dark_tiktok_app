import 'package:dark_tiktok_app/domain/entities/video_post.dart';
import 'package:dark_tiktok_app/infrastructure/models/local_video_model.dart';
import 'package:dark_tiktok_app/shared/data/local_video_posts.dart';
import 'package:flutter/material.dart';

class DiscoverProvider extends ChangeNotifier {
  // TODO: Repository, DataSource

  bool initialLoading = true;
  List<VideoPost> videosList = [];

  Future<void> loadNextPage() async {
    // await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videosList.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
