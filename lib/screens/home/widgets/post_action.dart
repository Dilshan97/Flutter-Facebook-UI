import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostAction extends StatelessWidget {
  final String label;
  final String image;

  const PostAction({
    super.key,
    required this.label,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          image,
          width: 22,
          color: const Color(0xffb0b3b8),
        ),
        SizedBox(
          width: size.width * 0.020,
        ),
        Text(
          label,
          style: GoogleFonts.roboto(
            color: const Color(0xffb0b3b8),
            fontSize: size.width * 0.038,
          ),
        )
      ],
    );
  }
}
