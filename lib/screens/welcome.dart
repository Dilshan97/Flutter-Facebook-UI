import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * 0.40,
          ),
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.contain,
              width: 60,
            ),
          ),
          SizedBox(
            height: size.height * 0.45,
          ),
          Column(
            children: [
              Text(
                "FACEBOOK",
                style: GoogleFonts.inter(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 4,
                  fontSize: 14
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
