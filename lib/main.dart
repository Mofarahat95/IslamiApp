import 'package:flutter/material.dart';
import 'package:islami/screens/home/Home_Screen.dart';
import 'package:islami/screens/home/taps/tabs_Details/hadethDetails.dart';
import 'package:islami/screens/home/taps/tabs_Details/suraDetails.dart';
import 'package:islami/theme/my_thme.dart';

void main(){
  runApp(IslamiApp());
}
class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme:MyThemeData.LigthTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: homeScreen.routeName,
     routes:{
      homeScreen.routeName:(context) => homeScreen(),
       suraDetails.routeName:(context) => suraDetails(),
       hadethDetails.routeName:(context) => hadethDetails(),

     },
    );
  }
}
