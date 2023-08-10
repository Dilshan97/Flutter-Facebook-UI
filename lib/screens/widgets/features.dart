import 'package:flutter/material.dart';

import 'feature_item.dart';

class Features extends StatefulWidget {
  const Features({super.key});

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeatureItem(
            title: "New",
            image: "",
            add: true,
          ),
          FeatureItem(
            title: "🎓 Convocation",
            image:
                "https://scontent.fcmb1-2.fna.fbcdn.net/v/t51.36329-10/319898978_516624730433004_4528875246806102442_n.jpg?stp=dst-jpg_p600x600&_nc_cat=102&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ad6a45&_nc_eui2=AeHqHLsJNd_Y2bGbwZd6P95GSjedLlpUHzhKN50uWlQfOK8d8nhceVbnxw5kM1Bf1zStOuOX8n6r8xpDVfrGR4n4&_nc_ohc=Pa7dYSNEEQEAX9K5b2r&_nc_ht=scontent.fcmb1-2.fna&oh=00_AfCDkgQ4bA3SQ2pGgFlwe-BnQsTNPZzq3377Jo4DVS-J-A&oe=64DAE8D8",
            add: false,
          ),
          FeatureItem(
            title: "Featured",
            image:
                "https://scontent.fcmb1-2.fna.fbcdn.net/v/t51.36329-10/319898978_516624730433004_4528875246806102442_n.jpg?stp=dst-jpg_p600x600&_nc_cat=102&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ad6a45&_nc_eui2=AeHqHLsJNd_Y2bGbwZd6P95GSjedLlpUHzhKN50uWlQfOK8d8nhceVbnxw5kM1Bf1zStOuOX8n6r8xpDVfrGR4n4&_nc_ohc=Pa7dYSNEEQEAX9K5b2r&_nc_ht=scontent.fcmb1-2.fna&oh=00_AfCDkgQ4bA3SQ2pGgFlwe-BnQsTNPZzq3377Jo4DVS-J-A&oe=64DAE8D8",
            add: false,
          ),
          FeatureItem(
            title: "Dev Life",
            image:
                "https://scontent.fcmb1-2.fna.fbcdn.net/v/t51.36329-10/319898978_516624730433004_4528875246806102442_n.jpg?stp=dst-jpg_p600x600&_nc_cat=102&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ad6a45&_nc_eui2=AeHqHLsJNd_Y2bGbwZd6P95GSjedLlpUHzhKN50uWlQfOK8d8nhceVbnxw5kM1Bf1zStOuOX8n6r8xpDVfrGR4n4&_nc_ohc=Pa7dYSNEEQEAX9K5b2r&_nc_ht=scontent.fcmb1-2.fna&oh=00_AfCDkgQ4bA3SQ2pGgFlwe-BnQsTNPZzq3377Jo4DVS-J-A&oe=64DAE8D8",
            add: false,
          ),
        ],
      ),
    );
  }
}
