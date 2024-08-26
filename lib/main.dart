import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/MyProvider.dart';
import 'package:islami/screens/home/Home_Screen.dart';
import 'package:islami/screens/home/taps/tabs_Details/hadethDetails.dart';
import 'package:islami/screens/home/taps/tabs_Details/suraDetails.dart';
import 'package:islami/theme/myTheme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations', // <-- change the path of the translation files
        startLocale: Locale('ar'),
        child: ChangeNotifierProvider(
            create: (context) => MyProvider()..getTheme(),
            child: IslamiApp())
    ),
  );
}

class IslamiApp extends StatelessWidget {
   IslamiApp({super.key});
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);;
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      themeMode: pro.mode,
      theme: MyThemeData.LigthTheme,
      darkTheme: MyThemeData.DarkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: homeScreen.routeName,
      routes: {
        homeScreen.routeName: (context) => homeScreen(),
        suraDetails.routeName: (context) => suraDetails(),
        hadethDetails.routeName: (context) => hadethDetails(),
      },
    );
  }

}

