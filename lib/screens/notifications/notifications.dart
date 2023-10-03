import 'package:facebook_app_ui/screens/notifications/widgets/notification_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                      "Notifications",
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
                Text(
                  "New",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: size.width * 0.040,
                  ),
                ),
                Column(
                  children: List.generate(10, (index) => const NotificationItem()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
