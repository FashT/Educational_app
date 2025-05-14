import 'package:educational_app/screens/resources/media.dart';
import 'package:educational_app/widget/appbar_avatar.dart';
import 'package:educational_app/widget/appbar_icon.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                Stack(
                  children: [
                    AppBarAvatar(imgs: AppImgs.studentImgs,),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: AppBarIcon(icons: Icons.qr_code),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Economics',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  Text(
                    '#6',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ],
              ),
            ),
            Text(
              'Select the correct judgment about the global economy from the list below',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xff232323),
              ),
              child: Row(
                children: [
                  Icon(Icons.circle, ),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      'The functioning of the world economy is based on the international division of labor',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xff232323),
              ),
              child: Row(
                children: [
                  Icon(Icons.circle, ),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      'The functioning of the world economy is based on the international division of labor',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xff232323),
              ),
              child: Row(
                children: [
                  Icon(Icons.circle),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      'The functioning of the world economy is based on the international division of labor',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xff232323),
              ),
              child: Row(
                children: [
                  Icon(Icons.circle),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      'The functioning of the world economy is based on the international division of labor',
                       style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 6,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xff55edfe),
              ),
              child: Text('Check the Answer', style: TextStyle(fontSize: 24),),
            ),
          ],
        ),
      
    );
  }
}
