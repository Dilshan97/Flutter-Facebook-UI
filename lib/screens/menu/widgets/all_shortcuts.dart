import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          height: size.height / 1.8,
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            physics: const NeverScrollableScrollPhysics(),
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
        SizedBox(
          height: size.height * 0.010,
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
      ],
    );
  }
}
