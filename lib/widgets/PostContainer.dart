import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:twitter_ui_clone/models/Post.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  PostContainer({this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileAvatar(
                  imageUrl: post.user.imageUrl, height: 70.0, width: 70.0),
              const SizedBox(width: 15.0),
              ContentContainer(post: post),
            ],
          ),
        ],
      ),
    );
  }
}

class StatsContainer extends StatelessWidget {
  const StatsContainer({
    Key key,
    @required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(
            MdiIcons.chatOutline,
            color: Colors.grey,
          ),
          label: Text(
            '${post.comments}',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(
            MdiIcons.twitterRetweet,
            color: Colors.grey,
          ),
          label: Text(
            '${post.retweets}',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(
            MdiIcons.heartOutline,
            color: Colors.grey,
          ),
          label: Text(
            '${post.likes}',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Expanded(
          child: IconButton(
            icon: Icon(
              MdiIcons.shareVariant,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}

class ContentContainer extends StatelessWidget {
  const ContentContainer({
    Key key,
    @required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                post.user.name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(width: 5.0),
              post.user.isVerified
                  ? Icon(
                      MdiIcons.checkDecagram,
                      color: Colors.white,
                      size: 15.0,
                    )
                  : const SizedBox.shrink(),
              const SizedBox(width: 5.0),
              Expanded(
                child: Text(
                  post.user.userName,
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text('8h',style: TextStyle(color: Colors.grey),),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          const SizedBox(height: 5.0),
          Text(
            post.description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(height: 10.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(post.imageUrl),
          ),
          const SizedBox(height: 10.0),
          StatsContainer(post: post),
        ],
      ),
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  final double height;
  final double width;
  final String imageUrl;

  const ProfileAvatar({Key key, this.height, this.width, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
