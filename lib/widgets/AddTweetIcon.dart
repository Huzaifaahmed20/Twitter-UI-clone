import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AddTweetIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 10,
          left: 12,
          child: Icon(MdiIcons.plus, size: 20.0),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          right: 12,
          child: Icon(MdiIcons.feather),
        ),
      ],
    );
  }
}
