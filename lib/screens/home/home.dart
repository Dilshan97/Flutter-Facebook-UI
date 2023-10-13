import 'package:facebook_app_ui/screens/home/widgets/post.dart';
import 'package:facebook_app_ui/screens/home/widgets/story.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const List stories = [
    {
      'name': 'Nadun Madushanka',
      'image': 'assets/images/stories/1.jpg',
      'avatar': 'assets/images/stories/avatar-1.jpeg'
    },
    {
      'name': 'Apple Asia',
      'image': 'assets/images/stories/2.jpg',
      'avatar': 'assets/images/stories/avatar-2.jpeg'
    },
    {
      'name': 'iShop.lk',
      'image': 'assets/images/stories/3.jpg',
      'avatar': 'assets/images/stories/avatar-3.jpeg'
    },
    {
      'name': 'Travel With Wife',
      'image': 'assets/images/stories/4.jpg',
      'avatar': 'assets/images/stories/avatar-4.jpeg'
    }
  ];

  static const List posts = [
    {
      'name': 'Wild Cookbook',
      'image': 'assets/images/posts/avatar-1.jpeg',
      'time': '2 days ago',
      'isPublic': true,
      'type': 'mixd',
      'post': 'Vitamin sea 🌊',
      'postImage': 'assets/images/posts/post-1.jpg'
    },
    {
      'name': 'Barista Sri Lanka',
      'image': 'assets/images/posts/avatar-2.jpg',
      'time': 'a day ago',
      'isPublic': true,
      'type': 'mixd',
      'post':
          'It’s a beautiful day and we are ready to provide you with love, comfort and the best coffee brewed with lot of happiness throughout the day 🫶🏽\n\nHead over to any of our outlets, our barista crew will be waiting for you with the biggest smile to make sure your coffee experience at Barista is something new, something different and something to be cherished 🧡',
      'postImage': 'assets/images/posts/post-2.jpeg'
    },
    {
      'name': 'MACHANG',
      'image': 'assets/images/posts/avatar-3.png',
      'time': '9 hours ago',
      'isPublic': true,
      'type': 'mixd',
      'post':
          'ඔන්න හරියටම World Cup පටන් අරගෙන තියෙන්නෙ මචං! අද අපේ 🇱🇰 කොල්ලො සෙල්ලම් 🏏 කරන පළවෙනි දවස! ඔයාලත් එන්න Cheer කරන්න 🥳❤️‍🔥\n#machang #chill #cwc2023 #cricketworldcup #beer #deliciousfood #friends #LiveScreening',
      'postImage': 'assets/images/posts/post-3.jpeg'
    },
    {
      'name': 'ICC - International Cricket Council',
      'image': 'assets/images/posts/avatar-4.jpeg',
      'time': '2 days ago',
      'isPublic': true,
      'type': 'mixd',
      'post':
          'Shakib Al Hasan continues his charge up the all-time list at #CWC23 📈',
      'postImage': 'assets/images/posts/post-4.jpeg',
      'verify': true,
    },
    {
      'name': 'Malith Ishan',
      'image': 'assets/images/posts/avatar-5.jpeg',
      'time': '15 hours ago',
      'isPublic': true,
      'type': 'mixd',
      'post': 'Team 🫶🏻',
      'postImage': 'assets/images/posts/post-5.jpeg',
    },
    {
      'name': 'Aluth',
      'image': 'assets/images/posts/avatar-6.png',
      'time': '21 hours ago',
      'isPublic': true,
      'type': 'mixd',
      'post': '🙄 #teachersday',
      'postImage': 'assets/images/posts/post-6.jpeg',
    },
    {
      'name': 'Newsfirst.lk',
      'image': 'assets/images/posts/avatar-7.jpeg',
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          'assets/images/logo-1.png',
          width: size.width * 0.35,
          color: Colors.white,
        ),
        actions: [
          Container(
            width: 45,
            height: 45,
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xff3a3b3b),
              borderRadius: BorderRadius.all(Radius.circular(50)),
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
            width: 45,
            height: 45,
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xff3a3b3b),
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Image.asset(
              'assets/icons/messenger.png',
              color: Colors.white,
              width: size.width * 0.065,
            ),
          )
        ],
      ),
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
                    SizedBox(
                      height: size.height * 0.015,
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
                                  const BorderRadius.all(Radius.circular(50)),
                              child: CircleAvatar(
                                child: Image.asset(
                                  'assets/images/user.jpeg',
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
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: size.width * 0.040,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/icons/photo.png',
                          fit: BoxFit.contain,
                          width: size.width * 0.060,
                        )
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
                    children: [
                      const NewStory(),
                      Row(
                        children: List.generate(
                          stories.length,
                          (index) => Story(
                            image: stories[index]['image'],
                            name: stories[index]['name'],
                            avatar: stories[index]['avatar'],
                          ),
                        ),
                      )
                    ],
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
          ),
        ),
      ),
    );
  }
}
