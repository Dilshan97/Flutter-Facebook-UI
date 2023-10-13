import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

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
            left: 8,
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
              style: GoogleFonts.poppins(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NewStory extends StatelessWidget {
  const NewStory({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.25,
      width: size.width * 0.30,
      decoration: const BoxDecoration(
        color: Color(0xff3a3b3b),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.asset(
              'assets/images/avatar.jpeg',
              fit: BoxFit.cover,
              height: size.height * 0.18,
              width: size.width,
            ),
          ),
          SizedBox(
            height: size.height * 0.004,
          ),
          Positioned(
            bottom: 5,
            child: Text(
              "Create\nstory",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: 45,
            child: Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: const Icon(
                Iconsax.add,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
