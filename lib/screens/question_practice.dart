import 'package:educational_app/screens/resources/media.dart';
import 'package:educational_app/screens/utils/json.dart';
import 'package:educational_app/widget/appbar_avatar.dart';
import 'package:educational_app/widget/appbar_icon.dart';
import 'package:flutter/material.dart';

class QuestionPractice extends StatelessWidget {
  const QuestionPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello\nAlexandar!',
                  textHeightBehavior: TextHeightBehavior(
                    applyHeightToFirstAscent: false,
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff333333),
                  ),
                ),
                Stack(
                  children: [
                    AppBarAvatar(imgs: AppImgs.studentImgs),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: AppBarIcon(icons: Icons.qr_code),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            "Challenge your\nknowledge",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Text(
                "type of question",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 6),
              Icon(Icons.keyboard_arrow_down, color: Colors.grey, size: 40),
            ],
          ),
          SizedBox(height: 30),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 6,
                childAspectRatio: 1.5,
              ),
              itemCount: itemsList.length,
              itemBuilder: (context, index) {
                final item = itemsList[index];
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: item['color'],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(item['icon'], color: Colors.white),
                      SizedBox(height: 4),
                      Text(item['title']),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 100,
            // margin: EdgeInsets.only(bottom: 2),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff55edfe),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mistakes practice',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                ),

                Text(
                  'Practice more the very exam excercises which you are\ndoing worse. You are gonna deal with it!',
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


