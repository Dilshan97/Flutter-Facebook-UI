import 'package:facebook_app_ui/screens/widgets/bio_item.dart';
import 'package:facebook_app_ui/screens/widgets/feature_item.dart';
import 'package:facebook_app_ui/screens/widgets/friends.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff242525),
      appBar: AppBar(
        backgroundColor: const Color(0xff242525),
        centerTitle: true,
        leading: const Icon(
          Icons.chevron_left,
          color: Colors.white,
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Dilshan Ramesh",
              style: GoogleFonts.inter(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              width: 33,
              height: 17,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xffD13745),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "9+",
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(6.0),
            child: Icon(
              Icons.edit,
              color: Colors.white,
              size: 24,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(6.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 24,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: size.width,
                  height: 200,
                  child: Image.asset(
                    "assets/images/cover.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 340,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff3A3B3C),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 90,
              left: 10,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 75,
                    backgroundColor: const Color(0xff242525),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/avatar.jpeg",
                        width: 450,
                        height: 450,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 103,
                    left: 120,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xff3A3B3C),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 245,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Dilshan Ramesh",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 23,
                          ),
                          children: [
                            TextSpan(
                              text: " (ඩිලා)",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Software Engineer | Innovator | Tech Enthusiast \n</> 🇱🇰🇦🇪🇳🇿🖥",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 145,
                            height: 45,
                            decoration: BoxDecoration(
                              color: const Color(0xff2C64F6),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Add to story",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 145,
                            height: 45,
                            decoration: BoxDecoration(
                              color: const Color(0xff3A3B3C),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Edit profile",
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 50,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Color(0xff3A3B3C),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          const BioItem(
                            title1: "Co-Founder/CEO at",
                            title2: "TECH පිස්සෝ",
                          ),
                          BioItem(
                            title1: "Works at",
                            title2: "Xydder Labs",
                          ),
                          BioItem(
                            title1: "Works at",
                            title2: "UBC Digital Networks Sri Lanka",
                          ),
                          BioItem(
                            title1: "Contributer at",
                            title2: "Crowdsource by Google",
                          ),
                          BioItem(
                            title1: "Former member at",
                            title2: "SLIIT FOSS Community",
                          ),
                          BioItem(
                            title1: "Former Senior Member at",
                            title2:
                                "Mahinda Rajapaksha College - Robotics & Innovators Club",
                          ),
                          BioItem(
                            title1: "Studied at",
                            title2: "SLIIT",
                          ),
                          BioItem(
                            title1: "Studied at",
                            title2: "Mahinda Rajapaksha College , Homagama.",
                          ),
                          BioItem(
                            title1: "Lives in",
                            title2: "Homagama",
                          ),
                          BioItem(
                            title1: "From",
                            title2: "Homagama",
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.more_horiz,
                                color: Color(0xffE4E6EA),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "See Your About Info",
                                style: GoogleFonts.inter(
                                  color: Color(0xffE4E6EA),
                                ),
                              )
                            ],
                          ),
                          const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                FeatureItem(
                                  title: "New",
                                ),
                                FeatureItem(
                                  title: "🎓",
                                ),
                                FeatureItem(
                                  title: "Featured",
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: size.width * 0.95,
                            height: 45,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xff27384E),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Edit public details",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                color: Color(0xff7EACEE),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Friends(),
                          const SizedBox(
                            height: 520,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
