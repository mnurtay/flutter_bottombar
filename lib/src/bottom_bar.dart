import 'package:flutter/material.dart';
import 'package:flutter_bottombar/src/bar_item.dart';
import 'package:flutter_bottombar/src/pages/favorite_page.dart';
import 'package:flutter_bottombar/src/pages/home_page.dart';
import 'package:flutter_bottombar/src/pages/profile_page.dart';

class BottomBar extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(
        title: 'Home',
        icon: Icons.home,
        color: Colors.indigo,
        child: HomePage(color: Colors.indigo)),
    BarItem(
        title: 'Likes',
        icon: Icons.favorite_border,
        color: Colors.pinkAccent,
        child: FavoritePage(color: Colors.pinkAccent)),
    BarItem(
        title: 'Profile',
        icon: Icons.person_outline,
        color: Colors.teal,
        child: ProfilePage(color: Colors.teal)),
  ];
  @override
  State<StatefulWidget> createState() {
    return _BottomBarState();
  }
}

class _BottomBarState extends State<BottomBar> {
  int selectedBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        child: widget.barItems[selectedBarIndex].child,
      ),
      bottomNavigationBar: AnimatedBottomBar(
          barItems: widget.barItems,
          duration: const Duration(milliseconds: 150),
          barStyle: BarStyle(fontSize: 20.0, iconSize: 30.0),
          onBarTap: (index) {
            setState(() {
              selectedBarIndex = index;
            });
          }),
    );
  }
}
