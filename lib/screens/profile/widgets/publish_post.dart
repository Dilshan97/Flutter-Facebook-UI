import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home/widgets/post.dart';

class PublishPost extends StatefulWidget {
  const PublishPost({super.key});

  @override
  State<PublishPost> createState() => _PublishPostState();
}

class _PublishPostState extends State<PublishPost> {
  List posts = [
    {
      'name': 'Dilshan Ramesh',
      'image': 'assets/images/user.jpeg',
      'time': '2 days ago',
      'isPublic': true,
      'type': 'mixd',
      'post': 'Vitamin sea 🌊',
      'postImage': 'assets/images/posts/post-1.jpg'
    },
    {
      'name': 'Dilshan Ramesh',
      'image': 'assets/images/user.jpeg',
      'time': 'a day ago',
      'isPublic': true,
      'type': 'mixd',
      'post':
          'It’s a beautiful day and we are ready to provide you with love, comfort and the best coffee brewed with lot of happiness throughout the day 🫶🏽\n\nHead over to any of our outlets, our barista crew will be waiting for you with the biggest smile to make sure your coffee experience at Barista is something new, something different and something to be cherished 🧡',
      'postImage': 'assets/images/posts/post-2.jpeg'
    },
    {
      'name': 'Dilshan Ramesh',
      'image': 'assets/images/user.jpeg',
      'time': '9 hours ago',
      'isPublic': true,
      'type': 'mixd',
      'post':
          'ඔන්න හරියටම World Cup පටන් අරගෙන තියෙන්නෙ මචං! අද අපේ 🇱🇰 කොල්ලො සෙල්ලම් 🏏 කරන පළවෙනි දවස! ඔයාලත් එන්න Cheer කරන්න 🥳❤️‍🔥\n#machang #chill #cwc2023 #cricketworldcup #beer #deliciousfood #friends #LiveScreening',
      'postImage': 'assets/images/posts/post-3.jpeg'
    },
    {
      'name': 'Dilshan Ramesh',
      'image': 'assets/images/user.jpeg',
      'time': '2 days ago',
      'isPublic': true,
      'type': 'mixd',
      'post':
          'Shakib Al Hasan continues his charge up the all-time list at #CWC23 📈',
      'postImage': 'assets/images/posts/post-4.jpeg',
      'verify': true,
    },
    {
      'name': 'Dilshan Ramesh',
      'image': 'assets/images/user.jpeg',
      'time': '15 hours ago',
      'isPublic': true,
      'type': 'mixd',
      'post': 'Team 🫶🏻',
      'postImage': 'assets/images/posts/post-5.jpeg',
    },
    {
      'name': 'Dilshan Ramesh',
      'image': 'assets/images/user.jpeg',
      'time': '21 hours ago',
      'isPublic': true,
      'type': 'mixd',
      'post': '🙄 #teachersday',
      'postImage': 'assets/images/posts/post-6.jpeg',
    },
    {
      'name': 'Dilshan Ramesh',
      'image': 'assets/images/user.jpeg',
      'time': '3 hours ago',
      'isPublic': true,
      'type': 'mixd',
      'post':
          "MATCH RESULTS 🙌\n𝐂𝐖𝐂 𝟐𝟎𝟐𝟑🏏🏆 | 𝟒𝐭𝐡 𝐌𝐚𝐭𝐜𝐡\n 🇱🇰 𝗦𝗥𝗜 𝗟𝗔𝗡𝗞𝗔 𝗩𝗦 𝗦𝗢𝗨𝗧𝗛 𝗔𝗙𝗥𝗜𝗖𝗔 🇿🇦\nRead more -https://news1st.lk/3tnpoqP\nICC Men's Cricket World Cup 2023🏏🏆\nLive & Exclusive on TV1 🔺📺\nWatch Online: www.sirasatv.lk\n\n#SLvSA #CWC23 #ICCWorldCup2023 #CricketWorldCup #WorldCupOnTV1 #OfficialBroadcaster #TV1 #SirasaTV",
      'postImage': 'assets/images/posts/post-7.jpeg',
      'verify': true,
    }
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.010,
        ),
        Container(
          width: size.width,
          height: 1.5,
          decoration: const BoxDecoration(
            color: Color(0xff65676A),
          ),
        ),
        SizedBox(
          height: size.height * 0.020,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Posts",
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Filters",
              style: GoogleFonts.inter(
                color: const Color(0xff6393DA),
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: const Color(0xff242525),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/user.jpeg",
                  width: 450,
                  height: 450,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "What's on your mind?",
              style: GoogleFonts.inter(
                color: const Color(0xffE4E6EA),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: size.width,
          height: size.height * 0.040,
          decoration: const BoxDecoration(
            color: Color(0xff333436),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.020,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/icons/video-icon.png'),
                  SizedBox(
                    width: size.width * 0.015,
                  ),
                  Text(
                    "Live Video",
                    style: GoogleFonts.inter(
                      color: Color(0xffE4E6EA),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/icons/photo-icon.png'),
                  SizedBox(
                    width: size.width * 0.015,
                  ),
                  Text(
                    "Photo/Video",
                    style: GoogleFonts.inter(
                      color: Color(0xffE4E6EA),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/icons/life-event.png'),
                  SizedBox(
                    width: size.width * 0.015,
                  ),
                  Text(
                    "Life Event",
                    style: GoogleFonts.inter(
                      color: Color(0xffE4E6EA),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.020,
        ),
        SizedBox(
          width: size.width,
          height: size.height * 0.045,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff3a3b3d),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Manage Posts",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: size.width * 0.035,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.030,
        ),
        Column(
          children: List.generate(
            posts.length,
            (index) => Post(
              name: posts[index]['name'],
              image: posts[index]['image'],
              time: posts[index]['time'],
              isPublic: posts[index]['isPublic'],
              type: posts[index]['type'],
              post: posts[index]['post'],
              postImage: posts[index]['postImage'],
              verify: posts[index]['verify'] ?? false,
            ),
          ),
        )
      ],
    );
  }
}
