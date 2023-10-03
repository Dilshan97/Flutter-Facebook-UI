import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Accordian extends StatefulWidget {
  final String title;
  final String icon;
  final List<Map<String, dynamic>> options;

  const Accordian({
    super.key,
    required this.title,
    required this.options,
    required this.icon,
  });

  @override
  State<Accordian> createState() => _AccordianState();
}

class _AccordianState extends State<Accordian> {
  bool _showContent = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.005,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    widget.icon,
                    fit: BoxFit.cover,
                    width: size.width * 0.090,
                  ),
                  SizedBox(
                    width: size.width * 0.020,
                  ),
                  Text(
                    widget.title,
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: size.width * 0.040,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _showContent = !_showContent;
                  });
                },
                child: Icon(
                  _showContent
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        _showContent
            ? Column(
                children: List.generate(
                  widget.options.length,
                  (index) => Container(
                    width: size.width,
                    padding: const EdgeInsets.all(18),
                    margin: EdgeInsets.symmetric(
                      vertical: size.height * 0.008,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xff323436),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Row(
                      children: [
                        Text(
                          widget.options[index]['label'],
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Container(),
        const Divider(
          color: Color(0xff65676B),
        )
      ],
    );
  }
}

