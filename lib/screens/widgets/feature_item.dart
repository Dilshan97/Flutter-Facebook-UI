import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureItem extends StatefulWidget {
  final String title;
  final String? image;
  final bool add;

  const FeatureItem(
      {super.key, required this.title, this.image, required this.add});

  @override
  State<FeatureItem> createState() => _FeatureItemState();
}

class _FeatureItemState extends State<FeatureItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          Container(
            width: 110,
            height: 180,
            decoration: BoxDecoration(
              color: Color(0xff323435),
              borderRadius: BorderRadius.circular(16),
            ),
            child: widget.add
                ? const Icon(
                    Icons.add,
                    color: Colors.white,
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SizedBox.fromSize(
                      child: Image.network(
                        widget.image.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
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
