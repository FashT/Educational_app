import 'package:educational_app/screens/resources/media.dart';
import 'package:flutter/material.dart';

class AppBarAvatar extends StatelessWidget {
  final  String imgs;
  const AppBarAvatar({super.key, required this.imgs});

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage(imgs),
    );
  }
}
