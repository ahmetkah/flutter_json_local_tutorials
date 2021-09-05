import 'package:flutter/material.dart';

import '/controllers/controllers.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PostController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.posts.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        var posts = controller.posts[index];
        return Card(
          child: ListTile(
            leading: Text(
              'Id: ${posts.id}',
            ),
            title: Text(
              'Title: ${posts.title}',
            ),
            subtitle: Text(
              'Body: ${posts.body}',
            ),
            trailing: Text(
              'userId: ${posts.userId}',
            ),
          ),
          elevation: 4.0,
        );
      },
      padding: const EdgeInsets.all(
        10.0,
      ),
    );
  }
}
