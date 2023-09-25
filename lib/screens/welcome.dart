import 'dart:async';

import 'package:facebook_app_ui/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  startTime() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, navigationPage);
  }

  Future<void> navigationPage() async {
    Navigator.of(context).pushAndRemoveUntil(
        PageTransition(type: PageTransitionType.fade, child: const Profile()),
        (route) => false);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff242525),
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
                    color: Colors.white60,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 4,
                    fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}
