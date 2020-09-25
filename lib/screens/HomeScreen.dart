import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:twitter_ui_clone/config/data/data.dart';
import 'package:twitter_ui_clone/config/pallete.dart';
import 'package:twitter_ui_clone/models/Post.dart';
import 'package:twitter_ui_clone/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.twitterBlue,
        child: AddTweetIcon(),
        onPressed: () {},
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            centerTitle: true,
            backgroundColor: Colors.black,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => Scaffold.of(context).openDrawer(),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  backgroundImage: NetworkImage(currentUser.imageUrl),
                ),
              ),
            ),
            title: Icon(
              MdiIcons.twitter,
              color: Pallete.twitterBlue,
              size: 30.0,
            ),
            actions: [
              IconButton(
                icon: Icon(
                  MdiIcons.starFourPointsOutline,
                  color: Pallete.twitterBlue,
                ),
                onPressed: () {},
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: Colors.grey,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final Post post = posts[index];
                return PostContainer(post: post);
              },
              childCount: posts.length,
            ),
          )
        ],
      ),
    );
  }
}
