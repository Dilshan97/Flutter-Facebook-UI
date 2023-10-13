import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserCard extends StatefulWidget {
  final String name;
  final String image;

  const UserCard({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
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
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
                width: size.width,
                height: size.height * 0.15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.name,
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
