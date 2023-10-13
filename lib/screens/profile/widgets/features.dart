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
            add: true,
          ),
          FeatureItem(
            title: "🎓 Convocation",
            image:
                "assets/images/highlights/highlight-1.jpeg",
            add: false,
          ),
          FeatureItem(
            title: "Featured",
            image:
                "assets/images/highlights/highlight-2.jpeg",
            add: false,
          ),
          FeatureItem(
            title: "Dev Life",
            image:
                "assets/images/highlights/highlight-3.jpeg",
            add: false,
          ),
        ],
      ),
    );
  }
}
