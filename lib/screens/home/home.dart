import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.050,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/logo-1.png',
                          width: size.width * 0.40,
                          color: Colors.white,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color(0xff2F3031),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                              ),
                              child: const Icon(
                                Iconsax.search_normal,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.020,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color(0xff2F3031),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                              ),
                              child: const Icon(
                                Iconsax.message,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.020,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              child: CircleAvatar(
                                child: Image.asset(
                                  'assets/images/avatar.jpeg',
                                  fit: BoxFit.cover,
                                  width: size.width,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.020,
                            ),
                            Text(
                              "What's on your mind ?",
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: size.width * 0.040,
                              ),
                            ),
                          ],
                        ),
                        Image.asset('assets/icons/saved.png')
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.010,
              ),
              const Divider(
                thickness: 6,
                color: Colors.black87,
              ),
              SizedBox(
                height: size.height * 0.010,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.030,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      10,
                      (index) => Container(
                        height: size.height * 0.25,
                        width: size.width * 0.30,
                        margin: EdgeInsets.symmetric(
                          horizontal: size.width * 0.010,
                        ),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/group.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 5,
                              left: 5,
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child: Image.asset(
                                    'assets/images/user1.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 5,
                              child: Text(
                                "Pubudu Arosha Wanigarathna",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.010,
              ),
              const Divider(
                thickness: 6,
                color: Colors.black87,
              ),
              SizedBox(
                height: size.height * 0.010,
              ),
              Column(
                children: List.generate(
                  20,
                  (index) => Container(
                    width: size.width,
                    height: size.height,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  child: CircleAvatar(
                                    child:
                                        Image.asset('assets/images/user1.jpg'),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.020,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Pubudu Arosha Wanigarathna",
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "11 m - Colombo",
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Iconsax.more,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Iconsax.add,
                                  color: Colors.white,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        Image.asset(
                          'assets/images/post.jpeg',
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
