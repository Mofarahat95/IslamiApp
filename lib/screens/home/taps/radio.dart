import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/MyProvider.dart';
import 'package:islami/theme/AppColor.dart';
import 'package:provider/provider.dart';

class radioTap extends StatelessWidget {
  const radioTap({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    Color currentColor=colors.primaryColor;
    provider.mode == ThemeMode.dark
        ? currentColor = colors.yallowColor
        : colors.primaryColor;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(height: 30,),
        Image.asset(
          'assets/images/radio.png',
        ),
        Text(
          "radioTitle".tr(),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_previous_sharp,
                color: currentColor,
                size: 50,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_arrow_sharp,
                color: currentColor,
                size: 50,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_next_sharp,
                color: currentColor,
                size: 50,
              ),
            ),
          ],
        )
      ],
    );
  }
}
