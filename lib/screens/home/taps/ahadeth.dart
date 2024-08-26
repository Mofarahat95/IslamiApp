import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/models/hadethMopdel.dart';
import 'package:islami/screens/home/taps/tabs_Details/hadethDetails.dart';


class ahadethTap extends StatefulWidget {
  const ahadethTap({super.key});

  @override
  State<ahadethTap> createState() => _ahadethTapState();
}

class _ahadethTapState extends State<ahadethTap> {
  List<hadethModel> allAhadeth = [];
  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadAhadethFile();
    }
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Image.asset(
            'assets/images/ahadeth_bg.png',
          ),
          const Divider(),
          Text(
            'الأحاديث',
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: allAhadeth.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      hadethDetails.routeName,
                      arguments: hadethModel(
                        title: allAhadeth[index].title,
                        contant: allAhadeth[index].contant,
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text(
                      allAhadeth[index].title,
                      style:Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  loadAhadethFile() {
    rootBundle.loadString('assets/files/ahadeth/ahadeth.txt').then(
      (value) {
        List<String> ahadeth = value.split('#');
        for (int i = 0; i < ahadeth.length; i++) {
          String hadeth = ahadeth[i];
          List<String> hadethLines = hadeth.trim().split('\n');
          String title = hadethLines[0];
          hadethLines.removeAt(0);
          List<String> Contant = hadethLines;
          hadethModel model = hadethModel(title: title, contant: Contant);
          allAhadeth.add(model);
          setState(() {});
        }
      },
    );
  }
}
