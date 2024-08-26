import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami/models/hadethMopdel.dart';
import 'package:islami/provider/MyProvider.dart';
import 'package:provider/provider.dart';

class hadethDetails extends StatelessWidget {
  const hadethDetails({super.key});
  static const String routeName = 'hadethDetails';
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    var model = ModalRoute.of(context)?.settings.arguments as hadethModel;
    return Stack(children: [
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
          title: Text(
            'إسلامي',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Center(
          child: Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    model.title,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                const Divider(
                  indent: 70,
                  endIndent: 70,
                  thickness: 2,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: model.contant.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          model.contant[index],
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 22,
                                  ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
