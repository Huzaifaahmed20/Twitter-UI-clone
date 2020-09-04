import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:twitter_ui_clone/config/pallete.dart';

import 'screens.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  final List<IconData> icons = const [
    MdiIcons.homeLightbulb,
    Icons.search,
    MdiIcons.bell,
    MdiIcons.emailOutline
  ];
  int _selectedIndex = 0;

  void onTap(index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _screens.length,
      initialIndex: _selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: TabBar(
          indicator: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
            ),
          ),
          tabs: icons
              .asMap()
              .map((i, e) => MapEntry(
                    i,
                    Tab(
                      icon: Icon(
                        e,
                        color: i == _selectedIndex
                            ? Pallete.twitterBlue
                            : Colors.grey,
                        size: 30.0,
                      ),
                    ),
                  ))
              .values
              .toList(),
          onTap: onTap,
        ),
      ),
    );
  }
}
