import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureItem extends StatefulWidget {
  final String title;
  final String? image;
  final bool add;

  const FeatureItem({
    super.key,
    required this.title,
    this.image,
    required this.add,
  });

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
            decoration: widget.add
                ? BoxDecoration(
                    color: const Color(0xff323435),
                    borderRadius: BorderRadius.circular(16),
                  )
                : BoxDecoration(
                    color: const Color(0xff323435),
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage(widget.image.toString()),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7),
                        BlendMode.dstATop,
                      ),
                    ),
                  ),
            child: widget.add
                ? const Icon(
                    Icons.add,
                    color: Colors.white,
                  )
                : Container(),
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
