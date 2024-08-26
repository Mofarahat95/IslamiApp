import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/widgets/langaugeButtomSheet.dart';
import 'package:islami/widgets/themeButtomSheet.dart';

class settingsTap extends StatelessWidget {
  const settingsTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Theme',
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
                  'Light Mode',
                    style: Theme.of(context).textTheme.bodyMedium
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Language',
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
                  'Arabic',
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
