import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/suraModel.dart';

class suraDetails extends StatefulWidget {
  const suraDetails({super.key});
  static const String routeName = 'suraDetials';

  @override
  State<suraDetails> createState() => _suraDetailsState();
}

class _suraDetailsState extends State<suraDetails> {
  List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as suraModel;
    if (verses.isEmpty) {
      loadsurafile(model.index);
    }
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_bg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(model.name,
                  style: Theme.of(context).textTheme.titleMedium),
              centerTitle: true,
            ),
            body: Card(
              child: Expanded(
                child: ListView.builder(
                  itemCount: verses.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Text(
                        verses[index],
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                    );
                  },
                ),
              ),
            )),
      ],
    );
  }

  loadsurafile(int index) async {
    String sura =
        await rootBundle.loadString('assets/files/quran/${index + 1}.txt');
    List<String> suraLines = sura.split('\n');
    verses = suraLines;
    setState(() {});
  }
}
