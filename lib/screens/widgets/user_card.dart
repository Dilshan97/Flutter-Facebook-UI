import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserCard extends StatefulWidget {
  const UserCard({super.key});

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 110,
        height: 170,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: const Color(0xff323435),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ), 
              child: SizedBox.fromSize(
                child: Image.network(
                  'https://scontent.fcmb1-2.fna.fbcdn.net/v/t39.30808-1/267193107_2058354364329081_605247422692116995_n.jpg?stp=c0.16.320.320a_dst-jpg_p320x320&_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=aa3c98&_nc_eui2=AeEftMtgH5gGNo79L7DSIpi652NQJLTtCBfnY1AktO0IF8kOJ2TXn2y9GquX4Vsmg8NON_ytm0yqh0K2o_X4mtU_&_nc_ohc=q0LWJYG5kUoAX80xppe&_nc_ht=scontent.fcmb1-2.fna&oh=00_AfDk9amubfiQ1uyPBcc6TegB7PjabX_FfOLpiAuecMzKLA&oe=64DA452F',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Pasindu Sandaruwan",
                style: GoogleFonts.inter(
                  color: const Color(0xffE4E6EA),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      );
  }
}
