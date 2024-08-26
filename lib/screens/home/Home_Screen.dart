import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/MyProvider.dart';
import 'package:islami/screens/home/taps/ahadeth.dart';
import 'package:islami/screens/home/taps/quran.dart';
import 'package:islami/screens/home/taps/radio.dart';
import 'package:islami/screens/home/taps/sepha.dart';
import 'package:islami/screens/home/taps/settings.dart';
import 'package:islami/theme/AppColor.dart';
import 'package:provider/provider.dart';

class homeScreen extends StatefulWidget {
  homeScreen({super.key});
  static const String routeName = 'homeScreen';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndex = 4;
  List<Widget> taps = [
    settingsTap(),
    sephaTap(),
    ahadethTap(),
    quranTap(),
    radioTap(),
  ];

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    Color currentColor = colors.primaryColor;
    pro.mode == ThemeMode.dark
        ? currentColor = colors.primaryDarkColor
        : colors.primaryColor;
    return Stack(children: [
      Image.asset(
        pro.mode == ThemeMode.light
            ? 'assets/images/main_bg.png'
            : 'assets/images/main_darkBg.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            "appBarTitle".tr(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.settings,
                size: 20,
              ),
              label: "settingsTap".tr(),
              backgroundColor: currentColor,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                size: 25,
                AssetImage(
                  'assets/images/sebha_blue.png',
                ),
              ),
              label: "sephaTap".tr(),
              backgroundColor: currentColor,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('assets/images/ahadeth.png'),
              ),
              label: "ahadethTap".tr(),
              backgroundColor: currentColor,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('assets/images/moshaf_blue.png'),
              ),
              label: "quranTap".tr(),
              backgroundColor: currentColor,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('assets/images/radio_blue.png'),
              ),
              label: "radioTap".tr(),
              backgroundColor: currentColor,
            ),
          ],
        ),
        body: taps[selectedIndex],
      ),
    ]);
  }
}
