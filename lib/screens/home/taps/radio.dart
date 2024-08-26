import 'package:flutter/material.dart';
import 'package:islami/theme/AppColor.dart';

class radioTap extends StatelessWidget {
  const radioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(height: 30,),
        Image.asset(
          'assets/images/radio.png',
        ),
        Text(
          'إذاعة القرآن الكريم',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_previous_sharp,
                color: colors.primaryColor,
                size: 50,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_arrow_sharp,
                color: colors.primaryColor,
                size: 50,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_next_sharp,
                color: colors.primaryColor,
                size: 50,
              ),
            ),
          ],
        )
      ],
    );
  }
}
