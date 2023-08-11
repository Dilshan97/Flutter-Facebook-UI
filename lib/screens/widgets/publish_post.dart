import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PublishPost extends StatefulWidget {
  const PublishPost({super.key});

  @override
  State<PublishPost> createState() => _PublishPostState();
}

class _PublishPostState extends State<PublishPost> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width,
          height: 1.5,
          decoration: const BoxDecoration(
            color: Color(0xff65676A),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Posts",
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Filters",
              style: GoogleFonts.inter(
                color: const Color(0xff6393DA),
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: const Color(0xff242525),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/avatar.jpeg",
                  width: 450,
                  height: 450,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "What's on your mind?",
              style: GoogleFonts.inter(
                color: const Color(0xffE4E6EA),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: size.width,
          height: size.height * 0.040,
          decoration: const BoxDecoration(
            color: Color(0xff65676A),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Status",
                    style: GoogleFonts.inter(
                      color: Color(0xffE4E6EA),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Photo",
                    style: GoogleFonts.inter(
                      color: Color(0xffE4E6EA),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Life Event",
                    style: GoogleFonts.inter(
                      color: Color(0xffE4E6EA),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
