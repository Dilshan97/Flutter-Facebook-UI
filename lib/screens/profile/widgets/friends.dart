import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'user_card.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  List friends = [
    {
      'name': 'Dhanika Perera',
      'image': 'assets/images/friends/dhanika.jpeg',
    },
    {
      'name': 'Ahamed Safnaj',
      'image': 'assets/images/friends/safnaj.jpeg',
    },
    {
      'name': 'Vihanga Nivarthana',
      'image': 'assets/images/friends/vihanga.jpeg',
    },
    {
      'name': 'Nishal Sehan',
      'image': 'assets/images/friends/nishal.jpeg',
    },
    {
      'name': 'Fiqri Ismail',
      'image': 'assets/images/friends/fiqri.jpeg',
    },
    {
      'name': 'Pasindu Sandaruwan',
      'image': 'assets/images/friends/pasindu.jpeg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 150) / 2;
    final double itemWidth = size.width / 2;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Friends",
                  style: GoogleFonts.inter(
                    color: const Color(0xffE4E6EA),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "3,808 friends",
                  style: GoogleFonts.inter(
                    color: const Color(0xffB0B3B7),
                  ),
                ),
              ],
            ),
            Text(
              "Find Frinds",
              style: GoogleFonts.inter(
                color: const Color(0xff608FD5),
                fontSize: 16,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: size.height * 0.46,
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: (itemWidth / itemHeight),
            children: List.generate(
              friends.length,
              (index) => UserCard(
                name: friends[index]['name'],
                image: friends[index]['image'],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          width: size.width * 0.90,
          height: size.height * 0.055,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff3A3B3C),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))
              )
            ),
            child: Text(
              'See all friends',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: const Color(0xffE4E6EA),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
