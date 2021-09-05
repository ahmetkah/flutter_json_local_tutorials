import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/views.dart';
import 'bindings/post_binding.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'JSON Local GetX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const PostsView(),
          binding: PostBinding(),
        ),
      ],
    );
  }
}
