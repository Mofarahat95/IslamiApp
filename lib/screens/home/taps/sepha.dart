import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/MyProvider.dart';
import 'package:islami/theme/AppColor.dart';
import 'package:provider/provider.dart';

class sephaTap extends StatefulWidget {
  sephaTap({super.key});

  @override
  State<sephaTap> createState() => _sephaTapState();
}

class _sephaTapState extends State<sephaTap> {
  int count = 0;
  double angle = 0;
  int index = 0;
  List<String> Azkar = [
    'سبحان الله',
    'الحمد لله',
    'لا إله إلا الله',
    'الله أكبر'
  ];
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    String headSebha='';
    String bodySebha='';
   if( pro.mode==ThemeMode.dark) {
     headSebha = 'assets/images/head_seb7a_dark.png';
     bodySebha = 'assets/images/2.0x/body_seb7a_dark@2x.png';
   }
        else{
     headSebha='assets/images/2.0x/head of seb7a@2x.png';
     bodySebha = 'assets/images/body_of_seb7a.png';
   }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                headSebha,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 75,bottom: 40),
                child: Transform.rotate(
                  angle: angle,
                  child: GestureDetector(
                    onTap: onTap,
                    child: Image.asset(
                      bodySebha,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          "sephaTitle".tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: pro.mode == ThemeMode.light
                ? Color.fromARGB(110, 147, 95, 1)
                : Color(0xff141A2E),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('$count',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: pro.mode == ThemeMode.light
                ? Color(0xffB7935F)
                : colors.yallowColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(Azkar[index],
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: pro.mode == ThemeMode.light
                          ? Colors.white
                          : Colors.black,
                    )),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
      ],
    );
  }

  onTap() {
    count++;
    if (count % 33 == 0) {
      count = 0;
      index = (index + 1) % 4;
    }
    angle += 380 / 4;
    setState(() {});
  }
}
