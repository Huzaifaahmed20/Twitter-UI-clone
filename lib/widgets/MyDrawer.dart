import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:twitter_ui_clone/config/data/data.dart';
import 'package:twitter_ui_clone/config/pallete.dart';

class MyDrawer extends StatelessWidget {
  final List<Map<String, dynamic>> menu = [
    {'icon': Icons.person_outline, 'name': 'Profile'},
    {'icon': MdiIcons.clipboardListOutline, 'name': 'Lists'},
    {'icon': MdiIcons.chatAlertOutline, 'name': 'Topics'},
    {'icon': MdiIcons.bookmarkOutline, 'name': 'Bookmarks'},
    {'icon': MdiIcons.sparkles, 'name': 'Moments'},
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 40, 0, 0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(currentUser.imageUrl),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(
                currentUser.name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
              child: Text(
                currentUser.userName,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: '112 ',
                      style: DefaultTextStyle.of(context).style.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Following',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  RichText(
                    text: TextSpan(
                      text: '21 ',
                      style: DefaultTextStyle.of(context).style.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Followers',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ...menu.map(
              (e) {
                return ListTile(
                  leading: Icon(
                    e['icon'],
                    color: Colors.grey,
                  ),
                  title: Text(
                    e['name'],
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
            const Divider(color: Colors.grey),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Text(
                'Settings and privacy',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 20, 0, 20),
              child: Text(
                'Help Center',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(color: Colors.grey),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(MdiIcons.lightbulbOutline),
                  color: Pallete.twitterBlue,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(MdiIcons.qrcode),
                  color: Pallete.twitterBlue,
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
