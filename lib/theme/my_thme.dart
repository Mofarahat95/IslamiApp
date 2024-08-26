import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/theme/AppColor.dart';

class MyThemeData {
  static ThemeData LigthTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      selectedItemColor: colors.blackColor,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.shifting,
    ),
    dividerTheme: DividerThemeData(
      color: colors.primaryColor,
      thickness: 3,
    ),
    iconTheme: IconThemeData(
      color: colors.blackColor,
      size: 30,
    ),
    cardTheme: CardTheme(
      elevation: 20,
      margin: EdgeInsets.all(10),
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xff242424),
      ),
      titleMedium: GoogleFonts.elMessiri(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Color(0xff242424),
      ),
      titleSmall: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Color(0xff242424),
      ),
     bodyLarge: GoogleFonts.elMessiri(
       fontSize: 23,
       fontWeight: FontWeight.w600,
       color: Color(0xff242424),
     ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xff242424),
      ),
    ),
  );
}
