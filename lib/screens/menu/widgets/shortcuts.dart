import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

