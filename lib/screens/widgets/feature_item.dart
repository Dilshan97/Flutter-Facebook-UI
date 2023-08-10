import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureItem extends StatefulWidget {
  final String title;

  const FeatureItem({
    super.key,
    required this.title,
  });

  @override
  State<FeatureItem> createState() => _FeatureItemState();
}

class _FeatureItemState extends State<FeatureItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 180,
            decoration: BoxDecoration(
              color: Color(0xff323435),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.title,
            style: GoogleFonts.inter(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
