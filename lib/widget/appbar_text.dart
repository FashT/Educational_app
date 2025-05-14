import 'package:flutter/material.dart';

class AppbarText extends StatelessWidget {
  final String text;
  const AppbarText({super.key, required this.text, });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      )
    ;
  }
}
