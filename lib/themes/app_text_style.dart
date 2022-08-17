import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle appRoboto({
    Color color = Colors.white,
    double fontSize = 16.0,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return GoogleFonts.roboto(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}
