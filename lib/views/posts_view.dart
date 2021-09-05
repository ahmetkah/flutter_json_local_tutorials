import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/widgets/widgets.dart';
import '/controllers/controllers.dart';

class PostsView extends StatelessWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///
    final _controller = Get.find<PostController>();

    return Scaffold(
      appBar: const AppBarWidget(
        appTitle: 'GetX ile Listele',
      ),
      body: Obx(
        () => _controller.isLoading.isTrue
            ? const LoadingWidget(
                text: 'Veriler yükleniyor...',
              )
            : SuccessWidget(
                controller: _controller,
              ),
      ),
    );
  }
}
