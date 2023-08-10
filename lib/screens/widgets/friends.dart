import 'package:facebook_app_ui/screens/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Friends",
                    style: GoogleFonts.inter(
                      color: Color(0xffE4E6EA),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "3,808 friends",
                    style: GoogleFonts.inter(
                      color: Color(0xffB0B3B7),
                    ),
                  ),
                ],
              ),
              Text(
                "Find Frinds",
                style: GoogleFonts.inter(
                  color: const Color(0xff608FD5),
                  fontSize: 16,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserCard(
                last: false,
                name: "Pasindu Sandaruwan",
                image: "https://scontent.fcmb1-2.fna.fbcdn.net/v/t39.30808-1/267193107_2058354364329081_605247422692116995_n.jpg?stp=c0.16.320.320a_dst-jpg_p320x320&_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=aa3c98&_nc_eui2=AeEftMtgH5gGNo79L7DSIpi652NQJLTtCBfnY1AktO0IF8kOJ2TXn2y9GquX4Vsmg8NON_ytm0yqh0K2o_X4mtU_&_nc_ohc=q0LWJYG5kUoAX80xppe&_nc_ht=scontent.fcmb1-2.fna&oh=00_AfDk9amubfiQ1uyPBcc6TegB7PjabX_FfOLpiAuecMzKLA&oe=64DA452F",
              ),
              UserCard(
                last: false,
                name: "Ahamed Safnaj",
                image: "https://scontent.fcmb1-2.fna.fbcdn.net/v/t39.30808-1/361615800_6500087976720709_1485301910772841367_n.jpg?stp=c316.755.1122.1123a_dst-jpg_s320x320&_nc_cat=104&cb=99be929b-3346023f&ccb=1-7&_nc_sid=aa3c98&_nc_eui2=AeFru2HMWI7XuZSTee1ZeOnarKzxnat8TXKsrPGdq3xNcvdW_qMzthU3DAFF6Z34KkV2a6JPIqLYyLXWR7GzABUc&_nc_ohc=J_eZgWlHjCMAX_rSMoF&_nc_ht=scontent.fcmb1-2.fna&oh=00_AfA-ptH0WnQ5GFNLfUWxwxtU4ZYSeGeXaBl-EiOqpjVkHA&oe=64D9EBBF",
              ),
              UserCard(
                last: true,
                name: "Nishal Sehan",
                image: "https://scontent.fcmb11-1.fna.fbcdn.net/v/t39.30808-1/348611983_204770062422710_5672252471847259113_n.jpg?stp=dst-jpg_p160x160&_nc_cat=101&cb=99be929b-3346023f&ccb=1-7&_nc_sid=7eb4c1&_nc_eui2=AeHdrKT_inHfRPmmYjIQreiXwPB4MylQJJ3A8HgzKVAkndMPGRAu5mr_pO6fdk7SnjP879e5B-pCfQumNDBjkOHT&_nc_ohc=GE2aOORdensAX9uDf3n&_nc_ht=scontent.fcmb11-1.fna&oh=00_AfBO31_bRiQToQqmH09W3EKYNj1vhAYYFtkeTpUSKXLqAQ&oe=64DA75C3",
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserCard(
                last: false,
                name: "Dhanika Perera",
                image: "https://scontent.fcmb11-1.fna.fbcdn.net/v/t39.30808-1/272868201_10228461902558108_760424956191651321_n.jpg?stp=dst-jpg_p160x160&_nc_cat=105&cb=99be929b-3346023f&ccb=1-7&_nc_sid=2fc63d&_nc_eui2=AeGhTK2a2zTUicwMNRhhUX-SIJ7kv7wEIfEgnuS_vAQh8UuzAeHqZGuDR7JgvHh0WE2jnoaTXoD6S13J1JdFVx5F&_nc_ohc=vG6-M85D-s8AX-V7_yc&_nc_ht=scontent.fcmb11-1.fna&oh=00_AfDMV2qhtmxUESBgcMa4Xud3Oy3BpMApr9rqDytNx5xgQA&oe=64DAAC8C",
              ),
              UserCard(
                last: false,
                name: "Sewmini Rathnaweera",
                image: "https://scontent.fcmb11-1.fna.fbcdn.net/v/t39.30808-1/355668409_253439907306786_9217319450552707340_n.jpg?stp=dst-jpg_p160x160&_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=2fc63d&_nc_eui2=AeEatXVLGwiVyDzJSyzAs1zyZmERQ-gE1qpmYRFD6ATWqk5CTdL4y3qYJWvDZ5UPKYCI2jimAauHiQDhuRvrVHwm&_nc_ohc=IfH2dWKZ4yYAX-zOZ-x&_nc_ht=scontent.fcmb11-1.fna&oh=00_AfAdEIufyE6N80aNzWvx8QcY033HbiN5ivuhqyNrng-OpQ&oe=64D95FC4",
              ),
              UserCard(
                last: true,
                name: "Fiqri Ismail",
                image: "https://scontent.fcmb11-1.fna.fbcdn.net/v/t39.30808-1/324148129_710611263920099_8987043919344290176_n.jpg?stp=dst-jpg_p160x160&_nc_cat=102&cb=99be929b-3346023f&ccb=1-7&_nc_sid=7eb4c1&_nc_eui2=AeFL-EHWGB6THEczaqA-WZP2b7-UTs3kaVpvv5ROzeRpWhl6ywWq0MbZigU8l_H64Usedg_HDYEdiqXy_B-EE7J_&_nc_ohc=8q2XkgyJHt4AX_Enyow&_nc_ht=scontent.fcmb11-1.fna&oh=00_AfCRQhXFG31040jCdQ1jKyMB8F28qY5GV-vsqzKC2GnFnA&oe=64DA6E1F",
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            width: size.width * 0.90,
            height: 45,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xff3A3B3C),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'See all friends',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: const Color(0xffE4E6EA),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      );
  }
}
