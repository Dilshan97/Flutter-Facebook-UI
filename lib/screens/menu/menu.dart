import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.050,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Menu",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * 0.070,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color(0xff2F3031),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: const Icon(
                            Iconsax.setting_2,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.030,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color(0xff2F3031),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: const Icon(
                            Iconsax.search_normal,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                Container(
                  width: size.width,
                  height: size.height / 12,
                  decoration: const BoxDecoration(
                    color: Color(0xff323436),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/profile');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  child: Image.asset(
                                    'assets/images/avatar.jpeg',
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.030,
                              ),
                              Text(
                                "Dilshan Ramesh",
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width * 0.045,
                                ),
                              )
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                color: Color(0xff393A3B),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                              ),
                              child: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                padding: const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                  color: Color(0xffE41E3F),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                child: const Text(
                                  '9+',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                const ShortCuts(),
                SizedBox(
                  height: size.height * 0.020,
                ),
                const AllShortcuts(),
                SizedBox(
                  height: size.height * 0.020,
                ),
                SizedBox(
                  width: size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff2F3031),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'See more',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: size.width * 0.040,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                AccordianList(),
                SizedBox(
                  height: size.height * 0.020,
                ),
                SizedBox(
                  width: size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff2F3031),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Log out',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: size.width * 0.040,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AccordianList extends StatelessWidget {
  const AccordianList({super.key});

  static final List<Map<String, dynamic>> menu = [
    {
      'label': 'Help & Support',
      'icon': 'assets/icons/help.png',
      'children': [
        {'label': 'Help Center'},
        {'label': 'Support Inbox'},
        {'label': 'Report a problem'},
        {'label': 'Terms & Policies'},
      ]
    },
    {
      'label': 'Settings & Privacy',
      'icon': 'assets/icons/help.png',
      'children': [
        {'label': 'Threads'},
        {'label': 'WhatsApp'}
      ]
    },
    {
      'label': 'Also from meta',
      'icon': 'assets/icons/help.png',
      'children': [
        {'label': 'Threads'},
        {'label': 'WhatsApp'}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        menu.length,
        (index) => Accordian(
          title: menu[index]['label'],
          icon: menu[index]['icon'],
          options: menu[index]['children'],
        ),
      ),
    );
  }
}

class Accordian extends StatefulWidget {
  final String title;
  final String icon;
  final List<Map<String, dynamic>> options;

  const Accordian({
    super.key,
    required this.title,
    required this.options,
    required this.icon,
  });

  @override
  State<Accordian> createState() => _AccordianState();
}

class _AccordianState extends State<Accordian> {
  bool _showContent = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.005,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    widget.icon,
                    fit: BoxFit.cover,
                    width: size.width * 0.090,
                  ),
                  SizedBox(
                    width: size.width * 0.020,
                  ),
                  Text(
                    widget.title,
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: size.width * 0.040,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _showContent = !_showContent;
                  });
                },
                child: Icon(
                  _showContent
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        _showContent
            ? Column(
                children: List.generate(
                  widget.options.length,
                  (index) => Container(
                    width: size.width,
                    padding: const EdgeInsets.all(18),
                    margin: EdgeInsets.symmetric(
                      vertical: size.height * 0.008,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xff323436),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Row(
                      children: [
                        Text(
                          widget.options[index]['label'],
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Container(),
        const Divider(
          color: Color(0xff65676B),
        )
      ],
    );
  }
}

class ShortCuts extends StatelessWidget {
  const ShortCuts({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final List<Map<String, String>> shortcuts = [
      {
        'type': 'group',
        'label': 'Software Engineers Club',
        'image': 'assets/images/group.png'
      },
      {
        'type': 'user',
        'label': 'Pubudu Arosha Wanigarathne',
        'image': 'assets/images/user1.jpg'
      },
      {
        'type': 'group',
        'label': 'හෝමාගම අපි',
        'image': 'assets/images/group.png'
      },
      {
        'type': 'user',
        'label': 'Akhila Shalinda Wijesundara',
        'image': 'assets/images/user2.jpg'
      }
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your shortcuts",
          textAlign: TextAlign.start,
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: size.width * 0.040,
          ),
        ),
        SizedBox(
          height: size.height * 0.015,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              shortcuts.length,
              (index) => Container(
                width: size.width / 4,
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        shortcuts[index]['type'] == 'user'
                            ? ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                child: Image.asset(
                                  shortcuts[index]['image']!,
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(16)),
                                child: Image.asset(
                                  shortcuts[index]['image']!,
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Color(0xff2F3031),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Image.asset(
                                shortcuts[index]['type'] == 'user' ? 'assets/icons/friends.png' : 'assets/icons/groups.png',
                                fit: BoxFit.cover,
                                width: size.width * 0.050,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.010,
                    ),
                    Text(
                      shortcuts[index]['label']!,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class AllShortcuts extends StatelessWidget {
  const AllShortcuts({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final List<Map<String, String>> shortcuts = [
      {'label': 'Saved', 'icon': 'assets/icons/saved.png'},
      {'label': 'Pages', 'icon': 'assets/icons/pages.png'},
      {'label': 'Groups', 'icon': 'assets/icons/groups.png'},
      {'label': 'Feeds', 'icon': 'assets/icons/feeds.png'},
      {'label': 'Friends', 'icon': 'assets/icons/friends.png'},
      {'label': 'Marketplace', 'icon': 'assets/icons/saved.png'},
      {'label': 'Video', 'icon': 'assets/icons/video.png'},
      {'label': 'Memories', 'icon': 'assets/icons/memories.png'},
      {'label': 'Events', 'icon': 'assets/icons/saved.png'},
      {'label': 'Gaming', 'icon': 'assets/icons/saved.png'},
    ];

    final double itemHeight = (size.height - kToolbarHeight - 24) / 8;
    final double itemWidth = size.width / 2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "All shortcuts",
          textAlign: TextAlign.start,
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: size.width * 0.040,
          ),
        ),
        SizedBox(
          height: size.height * 0.015,
        ),
        SizedBox(
          height: size.height / 2,
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            scrollDirection: Axis.vertical,
            childAspectRatio: (itemWidth / itemHeight),
            children: List.generate(
              shortcuts.length,
              (index) => Container(
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  color: Color(0xff323436),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        shortcuts[index]['icon']!,
                        width: 30,
                        height: 30,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        height: size.height * 0.010,
                      ),
                      Text(
                        shortcuts[index]['label']!,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
