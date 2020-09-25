import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:twitter_ui_clone/config/pallete.dart';
import 'package:twitter_ui_clone/widgets/MyDrawer.dart';
import 'package:twitter_ui_clone/widgets/widgets.dart';

import 'screens.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    Scaffold(),
    Scaffold(),
  ];
  final List<IconData> icons = const [
    MdiIcons.homeLightbulb,
    Icons.search,
    MdiIcons.bell,
    MdiIcons.email
  ];
  final List<IconData> outLineIcons = const [
    MdiIcons.homeLightbulbOutline,
    Icons.search,
    MdiIcons.bellOutline,
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
        drawer: MyDrawer(),
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 30.0),
          child: TabBar(
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
                          icon: Stack(
                        children: [
                          Icon(
                            i == _selectedIndex ? e : outLineIcons[i],
                            color: i == _selectedIndex
                                ? Pallete.twitterBlue
                                : Colors.grey,
                            size: 30.0,
                          ),
                          e == MdiIcons.bellOutline
                              ? NotificationCounter()
                              : const SizedBox.shrink()
                        ],
                      )),
                    ))
                .values
                .toList(),
            onTap: onTap,
          ),
        ),
      ),
    );
  }
}
