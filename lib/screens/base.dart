import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  int currentIndex = 0;

  List<Widget> children = [
    Container(
      color: Colors.greenAccent,
    ),
    Container(
      color: Colors.blueAccent,
    ),
    Container(
      color: Colors.redAccent,
    ),
    Container(
      color: Colors.yellowAccent,
    ),
    Container(
      color: Colors.purpleAccent,
    ),
    Container(
      color: Colors.amberAccent,
    ),
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
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: List.generate(
        navIcons.length,
        (index) => BottomNavigationBarItem(
          icon: Icon(navIcons[index]),
          label: navLabels[index],
        ),
      ),
    );
  }
}
