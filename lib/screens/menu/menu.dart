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
                              padding: const EdgeInsets.all(10),
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
                      backgroundColor: Color(0xff2F3031),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShortCuts extends StatelessWidget {
  const ShortCuts({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your shortcuts",
          textAlign: TextAlign.start,
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: size.width * 0.035,
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
            fontSize: size.width * 0.035,
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
