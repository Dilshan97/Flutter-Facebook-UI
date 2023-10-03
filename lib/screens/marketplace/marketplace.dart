import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Marketplace extends StatelessWidget {
  const Marketplace({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.050,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Marketplace",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.070,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color(0xff2F3031),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: const Icon(
                          Iconsax.notification,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.010,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color(0xff2F3031),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: const Icon(
                          Iconsax.user,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.010,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color(0xff2F3031),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: const Icon(
                          Iconsax.search_normal,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.020,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width / 2,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Iconsax.edit),
                        SizedBox(
                          width: size.width * 0.010,
                        ),
                        Text("Sell"),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: size.width * 0.020,
                  // ),
                  // Container(
                  //   width: size.width / 2,
                  //   decoration: BoxDecoration(
                  //     color: Colors.grey,
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Icon(Iconsax.task),
                  //       Text("Categories"),
                  //     ],
                  //   ),
                  // )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
