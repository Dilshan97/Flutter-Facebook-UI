import 'package:facebook_app_ui/screens/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                    color: Color(0xffE4E6EA),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "3,808 friends",
                  style: GoogleFonts.inter(
                    color: Color(0xffB0B3B7),
                  ),
                ),
              ],
            ),
            Text(
              "Find Frinds",
              style: GoogleFonts.inter(
                color: Color(0xff608FD5),
                fontSize: 16,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          children: [
            UserCard(),
            UserCard(),
            UserCard(),
          ],
        ),
        const Row(
          children: [
            UserCard(),
            UserCard(),
            UserCard(),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: size.width * 0.90,
          height: 45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xff3A3B3C),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'See all friends',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: Color(0xffE4E6EA),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}
