import 'package:flutter/material.dart';
import 'package:flutter_json_local_tutorials/views/posts_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSON Local',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const PostsView(),
    );
  }
}
