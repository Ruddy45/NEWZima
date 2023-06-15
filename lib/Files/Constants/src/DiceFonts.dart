import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DiceTextStyle {
  static final TextStyle small1 = GoogleFonts.dmSans(
      fontSize: 12.sp, fontWeight: FontWeight.w300, color: Colors.black);

  static final TextStyle Heading1 = GoogleFonts.dmSans(
      fontSize: 33.sp, fontWeight: FontWeight.bold, color: Colors.black);

  static final TextStyle Heading2 = GoogleFonts.actor(
      fontSize: 20.sp, fontWeight: FontWeight.w700, color: Colors.black);

  static final TextStyle Heading3 = GoogleFonts.dmSans(
      fontSize: 24.sp, fontWeight: FontWeight.w600, color: Colors.black);

  static final TextStyle Heading4 = GoogleFonts.dmSans(
      fontSize: 30.sp, fontWeight: FontWeight.w700, color: Colors.black);

  static final TextStyle bodystyle = GoogleFonts.dmSans(
      fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w300);

  static final TextStyle subheading = GoogleFonts.dmSans(
      fontSize: 20.sp, fontWeight: FontWeight.w500, color: Colors.black);

  static final TextStyle caption = GoogleFonts.dmSans(
      fontSize: 13.sp, fontWeight: FontWeight.w400, color: Colors.grey);

  static const TextStyle astyle = TextStyle(
      fontFamily: "Lato",
      fontSize: 13,
      fontStyle: FontStyle.normal,
      color: Colors.black);
}
