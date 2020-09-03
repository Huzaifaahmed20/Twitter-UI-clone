import 'package:twitter_ui_clone/models/User.dart';

class Post {
  User user;
  String description;
  String imageUrl;
  int comments;
  int retweets;
  int likes;

  Post({
    this.user,
    this.description,
    this.imageUrl,
    this.comments,
    this.retweets,
    this.likes,
  });
}
