import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '/models/models.dart';

class PostService {
  Future<List<Post>> getPosts() async {
    final _localPath = "assets/data/posts.json";

    // 1) JSON Array[] To String:
    final _response = await rootBundle.loadString(_localPath);

    /// 2) String To List<dynamic>:
    final List _decoded = jsonDecode(_response);

    /// 3-A) List<dynamic> To Iterable<Post>:
    final _iterable = _decoded.map((e) => Post.fromJson(e));

    /// 3-B) Iterable<Post> To List<Post>:
    final _readPosts = List<Post>.from(_iterable);

    /// _readPosts'u döndür.
    return _readPosts;
  }
}
