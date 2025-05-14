import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  final IconData icons;
  const AppBarIcon({super.key, required this.icons});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      child: Icon(Icons.qr_code, color: Colors.black),
    );
  }
}
