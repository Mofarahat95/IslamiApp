import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/widgets/langaugeButtomSheet.dart';
import 'package:islami/widgets/themeButtomSheet.dart';
import 'package:provider/provider.dart';

import '../../../provider/MyProvider.dart';

class settingsTap extends StatelessWidget {
  const settingsTap({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "themeTitle".tr(),
            style: Theme.of(context).textTheme.titleSmall
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => Container(
                  child: themeBottomSheet(),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xffB7935F),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  pro.mode==ThemeMode.light?
                  "lightTitle".tr():
                  "darkTitle".tr(),
                    style: Theme.of(context).textTheme.bodyMedium
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
              "languageTitle".tr(),
             style: Theme.of(context).textTheme.titleSmall
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => Container(
                  child: languageBottomSheet(),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xffB7935F),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  context.locale==Locale('ar')?
                    'عربي':
                    'English',
                    style: Theme.of(context).textTheme.bodyMedium
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
