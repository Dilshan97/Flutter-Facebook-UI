import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const NavButton({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff2F3031),
        foregroundColor: Colors.white,
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: size.width * 0.050,
          ),
          SizedBox(
            width: size.width * 0.020,
          ),
          Text(
            label,
            style: GoogleFonts.roboto(
              fontSize: size.width * 0.040,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
