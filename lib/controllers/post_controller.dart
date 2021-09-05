import 'package:get/get.dart';

import '/data/services/services.dart';
import '/data/models/models.dart';

class PostController extends GetxController {
  /// Constructor (Kurucu)
  PostController() {
    _postService = Get.find<PostService>();
    getPosts();
  }

  late PostService _postService;
  late RxList<Post> posts;

  RxBool isLoading = false.obs;

  Future<List<Post>> getPosts() async {
    showLoading();
    final _result = await _postService.getPosts();
    hideLoading();
    posts = _result.obs;
    return posts;
  }

  void showLoading() => isLoading.toggle();

  void hideLoading() => isLoading.toggle();
}
