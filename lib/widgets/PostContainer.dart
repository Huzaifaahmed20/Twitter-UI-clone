import 'package:flutter/material.dart';
import 'package:twitter_ui_clone/models/Post.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  PostContainer({this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _PostHeader(post: post),
        ],
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post post;

  _PostHeader({this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(post.user.imageUrl),
            ),
            shape: BoxShape.circle,
          ),
        ),
//        CircleAvatar(
//          backgroundImage: NetworkImage(post.user.imageUrl),
//        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                post.description,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
