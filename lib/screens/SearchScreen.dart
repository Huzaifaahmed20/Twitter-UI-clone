import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:twitter_ui_clone/config/data/data.dart';
import 'package:twitter_ui_clone/config/pallete.dart';
import 'package:twitter_ui_clone/widgets/widgets.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const LinearGradient storyGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.transparent, Colors.black],
    );
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
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(currentUser.imageUrl),
              ),
            ),
            title: Container(
              height: 60,
              child: TextField(
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(50.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Search Twitter",
                  fillColor: Colors.grey[900],
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  MdiIcons.cogOutline,
                  color: Pallete.twitterBlue,
                ),
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Container(
                  child: Image.network(bgImage),
                  margin: const EdgeInsets.symmetric(vertical: 20),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: storyGradient,
                  ),
                  height: 200,
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 70.0,
                  left: 10.0,
                  child: RichText(
                    text: TextSpan(
                      text: 'COVID-19    ',
                      style: DefaultTextStyle.of(context).style.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'LIVE',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 35.0,
                  left: 10.0,
                  child: Text(
                    'Updates on Covid-19 in Pakistan',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trends for you',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final trend = trends[index];
                return ListTile(
                  subtitle: Divider(
                    color: Colors.grey,
                  ),
                  title: Text(
                    trend,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
//                  trailing: IconButton(
//                    icon: Icon(
//                      Icons.keyboard_arrow_down,
//                      color: Colors.grey,
//                    ),
//                    onPressed: () {},
//                  ),
                );
              },
              childCount: trends.length,
            ),
          )
        ],
      ),
    );
  }
}
