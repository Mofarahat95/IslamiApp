import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                'assets/images/head of seb7a.png',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 33),
                child: Transform.rotate(
                  angle: angle,
                  child: GestureDetector(
                    onTap: onTap,
                    child: Image.asset(
                      'assets/images/2.0x/body_of_seb7a@2x.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          'عدد التسبيحات',
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
              color: Color.fromARGB(110, 147, 95, 1)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '$count',
              textAlign: TextAlign.center,
              style:Theme.of(context).textTheme.bodyLarge
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Color(0xffB7935F)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(Azkar[index],
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white,
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
