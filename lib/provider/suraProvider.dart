import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class suraProvider extends ChangeNotifier{
  List<String> verses = [];
  loadsurafile(int index) async {
    String sura =
    await rootBundle.loadString('assets/files/quran/${index + 1}.txt');
    List<String> suraLines = sura.split('\n');
    verses = suraLines;
    notifyListeners();
  }
}
