import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'post_action.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.020,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: CircleAvatar(
                        child: Image.asset('assets/images/user1.jpg'),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.020,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Pubudu Arosha Wanigarathna",
                          style: GoogleFonts.roboto(
                            color: const Color(0xffe4e6eb),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "7 hours ago . ",
                              style: GoogleFonts.roboto(
                                color: const Color(0xff7c7e82),
                              ),
                            ),
                            Icon(
                              Icons.public,
                              color: const Color(0xff7c7e82),
                              size: size.width * 0.045,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Iconsax.more,
                      color: Color(0xffafb2b7),
                    ),
                    SizedBox(
                      width: size.width * 0.020,
                    ),
                    const Icon(
                      Icons.close,
                      color: Color(0xffafb2b7),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Image.asset(
            'assets/images/post.jpeg',
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: size.height * 0.010,
          ),
          const Divider(
            indent: 10,
            endIndent: 10,
            color: Color(0xff65676b),
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.030,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PostAction(
                  label: 'Like',
                  image: 'assets/icons/post/like.png',
                ),
                PostAction(
                  label: 'Comment',
                  image: 'assets/icons/post/comment.png',
                ),
                PostAction(
                  label: 'Share',
                  image: 'assets/icons/post/share.png',
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.010,
          ),
          const Divider(
            thickness: 8,
            color: Colors.black87,
          ),
          SizedBox(
            height: size.height * 0.010,
          ),
        ],
      ),
    );
  }
}
