import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BioItem extends StatefulWidget {
  final String title1;
  final String title2;
  final String type;

  const BioItem({
    super.key,
    required this.title1,
    required this.title2,
    required this.type,
  });

  @override
  State<BioItem> createState() => _BioItemState();
}

class _BioItemState extends State<BioItem> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
            child: RichText(
              softWrap: false,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                text: "${widget.title1} ",
                style: GoogleFonts.inter(
                  color: const Color(0xffDBDCE0),
                  fontSize: size.width * 0.038,
                ),
                children: [
                  TextSpan(
                    text: widget.title2,
                    style: GoogleFonts.inter(
                      color: const Color(0xffE4E6EA),
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.038,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
