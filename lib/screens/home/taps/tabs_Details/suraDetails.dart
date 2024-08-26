import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/suraModel.dart';
import 'package:islami/provider/suraProvider.dart';
import 'package:provider/provider.dart';

import '../../../../provider/MyProvider.dart';

class suraDetails extends StatelessWidget {
  const suraDetails({super.key});
  static const String routeName = 'suraDetials';
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    var model = ModalRoute.of(context)?.settings.arguments as suraModel;
    return ChangeNotifierProvider(
      create:(context) =>  suraProvider()..loadsurafile(model.index),
      builder:(context, child){
        var suraPro=Provider.of<suraProvider>(context);
        return Stack(
          children: [
            Image.asset(
              provider.mode == ThemeMode.light
                  ? 'assets/images/main_bg.png'
                  : 'assets/images/main_darkBg.png',
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
                      itemCount: suraPro.verses.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text(
                            suraPro.verses[index],
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            ),
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
    );
  }
}
