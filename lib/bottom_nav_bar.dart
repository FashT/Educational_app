
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(child: Text('Hello')),
      floatingActionButton: Container(
        width: size.width * 0.7,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.home, color: Colors.white),
            ),
            SizedBox(width: 20),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.search, color: Colors.white),
            ),
            SizedBox(width: 20),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.settings, color: Colors.white),
            ),
          ],
        ),
      ),

      // Container(
      //   margin: EdgeInsets.symmetric(horizontal: 90),
      //   padding: EdgeInsets.symmetric(vertical: 7),
      //   height: 50,
      //   width: 120,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(30),
      //     color: Colors.blue,
      //   ),
      //   child: Row(
      //     children: [
      //       IconButton(onPressed: () {}, icon: Icon(Icons.home)),
      //       Text('Home'),
      //     ],
      //   ),
      // ),
    );
  }
}
