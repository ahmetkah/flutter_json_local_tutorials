import 'package:get/get.dart';

import '/controllers/controllers.dart';
import '/data/services/services.dart';

class PostBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PostService>(PostService());
    Get.lazyPut<PostController>(() => PostController());
  }
}
