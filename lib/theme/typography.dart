import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_service_app/constants.dart';

class CustomTypography {
  static TextTheme textTheme = TextTheme(
    headline1: GoogleFonts.questrial(fontSize: 96, textStyle: TextStyle(color: textColor),),
    headline2: GoogleFonts.questrial(fontSize: 60, textStyle: TextStyle(color: textColor),),
    headline3: GoogleFonts.questrial(fontSize: 48, fontWeight: FontWeight.w600, textStyle: TextStyle(color: textColor),),
    headline4: GoogleFonts.questrial(fontSize: 34, fontWeight: FontWeight.w600, textStyle: TextStyle(color: textColor),),
    headline5: GoogleFonts.questrial(fontSize: 24, textStyle: TextStyle(color: textColor),),
    headline6: GoogleFonts.questrial(fontSize: 20, textStyle: TextStyle(color: textColor),),
    subtitle1: GoogleFonts.questrial(fontSize: 16, textStyle: TextStyle(color: textColor),),
    subtitle2: GoogleFonts.questrial(fontSize: 14, textStyle: TextStyle(color: textColor),),
    bodyText1: GoogleFonts.questrial(fontSize: 17, textStyle: TextStyle(color: textColor),),
    bodyText2: GoogleFonts.questrial(fontSize: 15, textStyle: TextStyle(color: textColor),),
    button: GoogleFonts.questrial(fontSize: 20, textStyle: TextStyle(color: textColor),),
    caption: GoogleFonts.questrial(fontSize: 13, textStyle: TextStyle(color: textColor),),
    overline: GoogleFonts.questrial(fontSize: 10, textStyle: TextStyle(color: textColor),),
  );
}