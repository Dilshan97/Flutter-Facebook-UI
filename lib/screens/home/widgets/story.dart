import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Story extends StatelessWidget {
  final String image;
  final String name;
  final String avatar;

  const Story({
    super.key,
    required this.image,
    required this.name,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.25,
      width: size.width * 0.30,
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.010,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.6),
            BlendMode.dstATop,
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              child: CircleAvatar(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(avatar),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.9),
                        BlendMode.dstATop,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 5,
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: GoogleFonts.roboto(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
