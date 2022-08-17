import 'package:flutter/material.dart';

class AppColors {
  static const black = Color(0xff21212a);
  static const lightBlack = Color(0xff2a2a39);
  static const shadow = Color(0xff1a1a21);
  static const green = Color(0xff33a48f);
  static const limeGreen = Color(0xffe9de80);

  static const greenGradient = LinearGradient(
    colors: [Color(0xff33a480), Color(0xffe9de80)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
