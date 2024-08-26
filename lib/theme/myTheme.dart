import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/provider/MyProvider.dart';
import 'package:islami/theme/AppColor.dart';
import 'package:provider/provider.dart';
class MyThemeData {
  var pro=Provider.of<MyProvider>;
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
      margin: EdgeInsets.all(12),
      color: Color.fromRGBO(248, 248, 248,1),
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


  static ThemeData DarkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      centerTitle: true,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: colors.primaryDarkColor,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      selectedItemColor: colors.yallowColor,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.shifting,
    ),
    dividerTheme: DividerThemeData(
      color: colors.yallowColor,
      thickness: 3,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
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
        color: Color(0xffF8F8F8),
      ),
      titleMedium: GoogleFonts.elMessiri(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Color(0xffF8F8F8),
      ),
      titleSmall: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Color(0xffF8F8F8),
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 23,
        fontWeight: FontWeight.w600,
        color: Color(0xffF8F8F8),
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xffF8F8F8),
      ),
    ),
  );
}
