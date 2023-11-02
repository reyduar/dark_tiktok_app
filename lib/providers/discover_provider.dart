import 'package:dark_tiktok_app/domain/entities/video_post.dart';
import 'package:flutter/material.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videosList = [];

  Future<void> loadNextPage() async {
    // cargar videos

    notifyListeners();
  }
}
