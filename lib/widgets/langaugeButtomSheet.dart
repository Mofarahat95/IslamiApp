import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/MyProvider.dart';
import 'package:islami/theme/AppColor.dart';
import 'package:provider/provider.dart';

class languageBottomSheet extends StatelessWidget {
  const languageBottomSheet({super.key});

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
                context.setLocale(Locale('ar'));
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "arTitle".tr(),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  context.locale == Locale('ar')
                      ? Icon(
                          Icons.done,
                          color: pro.mode == ThemeMode.light
                              ? colors.primaryColor
                              : colors.yallowColor,
                        )
                      : SizedBox(),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                context.setLocale(Locale('en'));
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "enTitle".tr(),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  context.locale == Locale('en')
                      ? Icon(
                          Icons.done,
                          color: pro.mode == ThemeMode.light
                              ? colors.primaryColor
                              : colors.yallowColor,
                        )
                      : SizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
