
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bio_item.dart';
import 'social_media.dart';

class Bio extends StatefulWidget {
  const Bio({super.key});

  @override
  State<Bio> createState() => _BioState();
}

class _BioState extends State<Bio> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BioItem(
          title1: "Co-Founder/CEO at",
          title2: "TECH පිස්සෝ",
          type: "job",
        ),
        const BioItem(
          title1: "Works at",
          title2: "Xydder Labs",
          type: "job",
        ),
        const BioItem(
          title1: "Works at",
          title2: "UBC Digital Networks Sri Lanka",
          type: "job",
        ),
        const BioItem(
          title1: "Contributer at",
          title2: "Crowdsource by Google",
          type: "job",
        ),
        const BioItem(
          title1: "Former member at",
          title2: "SLIIT FOSS Community",
          type: "job",
        ),
        const BioItem(
          title1: "Former Senior Member at",
          title2: "Mahinda Rajapaksha College - Robotics & Innovators Club",
          type: "job",
        ),
        const BioItem(
          title1: "Studied at",
          title2: "SLIIT",
          type: "edu",
        ),
        const BioItem(
          title1: "Studied at",
          title2: "Mahinda Rajapaksha College , Homagama.",
          type: "edu",
        ),
        const BioItem(
          title1: "Lives in",
          title2: "Homagama",
          type: "home",
        ),
        const BioItem(
          title1: "From",
          title2: "Homagama",
          type: "location",
        ),
        const SocialMedia(
          title: "Single",
          type: "status",
        ),
        const SocialMedia(
          title: "dilshan_ramesh",
          type: "instagram",
        ),
        const SocialMedia(
          title: "dilshan97",
          type: "github",
        ),
        const SocialMedia(
          title: "dilshanramesh81",
          type: "twitter",
        ),
        const SocialMedia(
          title: "dilshan-ramesh",
          type: "linkedin",
        ),
        const SocialMedia(
          title: "dilshan97.github.io",
          type: "web",
        ),
        Row(
          children: [
            const Icon(
              Icons.more_horiz,
              color: Color(0xffE4E6EA),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "See Your About Info",
              style: GoogleFonts.inter(
                color: const Color(0xffE4E6EA),
              ),
            )
          ],
        )
      ],
    );
  }
}
