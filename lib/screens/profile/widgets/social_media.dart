import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialMedia extends StatefulWidget {
  final String title;
  final String type;

  const SocialMedia({
    super.key,
    required this.title,
    required this.type,
  });

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/icons/${widget.type}.png',
            color: const Color(0xff8A8D90),
            width: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              widget.title,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.inter(
                color: const Color(0xffDBDCE0),
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
