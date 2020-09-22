import 'package:flutter/material.dart';
import 'package:twitter_ui_clone/config/pallete.dart';

class NotificationCounter extends StatelessWidget {
  const NotificationCounter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: 0,
      child: Container(
        height: 15,
        width: 15,
        decoration: BoxDecoration(
            color: Pallete.twitterBlue,
            shape: BoxShape.circle),
        child: Center(
          child: Text(
            '4',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}