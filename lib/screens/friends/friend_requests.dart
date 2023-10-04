import 'package:facebook_app_ui/screens/friends/widgets/friend_request_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../widgets/nav_button.dart';

class FriendRequests extends StatelessWidget {
  const FriendRequests({super.key});

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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Friends",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * 0.070,
                      ),
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
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                Row(
                  children: [
                    const NavButton(
                      label: 'Suggestions',
                    ),
                    SizedBox(
                      width: size.width * 0.015,
                    ),
                    const NavButton(
                      label: 'Your Friends',
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey[600],
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Friend requests",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * 0.045,
                      ),
                    ),
                    Text(
                      "See all",
                      style: GoogleFonts.roboto(
                        color: Colors.blue[600],
                        fontSize: size.width * 0.045,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                Column(
                  children: List.generate(100, (index) => const FriendRequestItem()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
