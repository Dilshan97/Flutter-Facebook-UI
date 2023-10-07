import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendRequestItem extends StatelessWidget {
  final String name;
  final String image;

  const FriendRequestItem({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.006,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: size.width * 0.16,
            ),
          ),
          SizedBox(
            width: size.width * 0.020,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * 0.040,
                      ),
                    ),
                    Text(
                      "1 h",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Text(
                  "1 mutual friend",
                  style: GoogleFonts.roboto(
                    color: Colors.grey[400],
                    fontSize: size.width * 0.035,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.30,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff2C64F6),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                        child: Text(
                          'Confirm',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: size.width * 0.040,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.020,
                    ),
                    SizedBox(
                      width: size.width * 0.30,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff2F3031),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                        child: Text(
                          'Delete',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: size.width * 0.040,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
