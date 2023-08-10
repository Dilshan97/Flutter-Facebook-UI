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
            color: Color(0xff65676A)
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Posts", style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),),
            Text("Filters", style: GoogleFonts.inter(
              color: const Color(0xff6393DA),
              fontSize: 14,
            ),),
          ],
        )
      ],
    );
  }
}