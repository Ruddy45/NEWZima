import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../Constants/src/colors.dart';
import '../Screens/dicehome/view.dart';
import '../Screens/screen2/view.dart';
import '../Screens/screen3/view.dart';
import '../Screens/screen4/view.dart';

class DiceNavBar extends StatefulWidget {
  const DiceNavBar({Key? key}) : super(key: key);

  @override
  State<DiceNavBar> createState() => _DiceNavBarState();
}

class _DiceNavBarState extends State<DiceNavBar> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const DicehomePage(),
      CallLogPage(),
      Screen3Page(),
      Screen4Page(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style12, // Choose the nav bar style with this property.
    );
  }
}

/// List of widgets
List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.bubble_chart),
      title: ("Chats"),
      activeColorPrimary: DiceColors.dice2,
      inactiveColorPrimary: DiceColors.dice5,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.call),
      title: ("Call Logs"),
      activeColorPrimary: DiceColors.dice2,
      inactiveColorPrimary: DiceColors.dice5,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.podcasts_sharp),
      title: ("Podcasts"),
      activeColorPrimary: DiceColors.dice2,
      inactiveColorPrimary: DiceColors.dice5,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.person),
      title: ("Account"),
      activeColorPrimary: DiceColors.dice2,
      inactiveColorPrimary: DiceColors.dice5,
    ),
  ];
}
