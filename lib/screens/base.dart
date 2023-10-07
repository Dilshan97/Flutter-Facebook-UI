import 'package:facebook_app_ui/screens/home/home.dart';
import 'package:facebook_app_ui/screens/menu/menu.dart';
import 'package:facebook_app_ui/screens/notifications/notifications.dart';
import 'package:facebook_app_ui/screens/video/video.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'friends/friend_requests.dart';
import 'marketplace/marketplace.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  int currentIndex = 0;

  List<Widget> children = [
    const Home(),
    const FriendRequests(),
    const Video(),
    const Marketplace(),
    const Notifications(),
    const Menu()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[currentIndex],
      bottomNavigationBar: BottomNavbar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}

class BottomNavbar extends StatelessWidget {
  final int currentIndex;
  final void Function(int)? onTap;

  const BottomNavbar({
    super.key,
    required this.currentIndex,
    this.onTap,
  });

  static final List<String> navLabels = [
    'Home',
    'Friends',
    'Video',
    'Marketplace',
    'Notifications',
    'Menu'
  ];

  static final List<IconData> navIcons = [
    Iconsax.home,
    Iconsax.profile_2user,
    Iconsax.video_play,
    Iconsax.shop,
    Iconsax.notification,
    Iconsax.menu,
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      enableFeedback: true,
      unselectedLabelStyle: TextStyle(
        fontSize: size.width * 0.025,
        fontWeight: FontWeight.w500
      ),
      selectedLabelStyle: TextStyle(
        fontSize: size.width * 0.025,
        fontWeight: FontWeight.w500
      ),
      items: List.generate(
        navIcons.length,
        (index) => BottomNavigationBarItem(
          label: navLabels[index],
          backgroundColor: Colors.blue,
          icon: Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.010,
            ),
            child: Icon(navIcons[index]),
          ),
          activeIcon: Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.010,
            ),
            child: Icon(
              navIcons[index],
              color: Colors.blue,
              weight: 1.2,
            ),
          ),
        ),
      ),
    );
  }
}
