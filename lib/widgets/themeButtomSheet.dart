import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:islami/provider/MyProvider.dart';
import 'package:islami/theme/AppColor.dart';
import 'package:provider/provider.dart';

class themeBottomSheet extends StatelessWidget {
  const themeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lightTitle".tr(),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  if(pro.mode==ThemeMode.light)
                  const Icon(
                    Icons.done,
                    color: Color(0xffB7935F),
                  ),
                ],
              ),
            ),
            const  SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "darkTitle".tr(),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  if(pro.mode==ThemeMode.dark)
                     Icon(
                      Icons.done,
                      color: colors.yallowColor,
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
