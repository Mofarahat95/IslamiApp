import 'package:flutter/material.dart';
import 'package:islami/screens/home/taps/ahadeth.dart';
import 'package:islami/screens/home/taps/quran.dart';
import 'package:islami/screens/home/taps/radio.dart';
import 'package:islami/screens/home/taps/sepha.dart';
import 'package:islami/screens/home/taps/settings.dart';
import 'package:islami/theme/AppColor.dart';

class homeScreen extends StatefulWidget {
  homeScreen({super.key});
  static const String routeName = 'homeScreen';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndex = 0;
  List<Widget> taps = [
    radioTap(),
    sephaTap(),
    ahadethTap(),
    quranTap(),
    settingsTap(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/main_bg.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
      Scaffold(
        appBar: AppBar(
          title:  Text(
            'إسلامي',
            style: Theme.of(context).textTheme.titleLarge
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: colors.primaryColor,
              icon: ImageIcon(
                AssetImage('assets/images/radio_blue.png'),
              ),
              label: 'Radio',
            ),
            BottomNavigationBarItem(
              backgroundColor: colors.primaryColor,
              icon: ImageIcon(
                size: 25,
                AssetImage('assets/images/sebha_blue.png',),
              ),
              label: 'sebha',
            ),
            BottomNavigationBarItem(
              backgroundColor: colors.primaryColor,
              icon: ImageIcon(
                AssetImage('assets/images/ahadeth.png'),
              ),
              label: 'ahadeth',
            ),
            BottomNavigationBarItem(
              backgroundColor: colors.primaryColor,
              icon: ImageIcon(
                AssetImage('assets/images/moshaf_blue.png'),
              ),
              label: 'quran',
            ),
            BottomNavigationBarItem(
              backgroundColor: colors.primaryColor,
              icon: Icon(Icons.settings,size: 20,),
              label: 'settings',
            ),
          ],
        ),
        body: taps[selectedIndex],
      ),
    ]);
  }
}
