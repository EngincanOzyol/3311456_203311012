import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/dateTime.dart';
import 'package:flutter2/style.dart';
import 'package:flutter2/vucutBolumleri.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class boykiloDogumTarihi extends StatefulWidget {
  const boykiloDogumTarihi({Key? key}) : super(key: key);

  @override
  State<boykiloDogumTarihi> createState() => _boykiloDogumTarihiState();
}

class _boykiloDogumTarihiState extends State<boykiloDogumTarihi> {
  String? label;
  int boy = 180;
  int kilo = 80;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('tr'),
      ],
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal,

          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,

              children: [
                Text(
                  ' SİZİ DAHA YAKINDA TANIYALIM',
                  style: buyukStil,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Kocunuzun sizi daha iyi tanımasına izin verin',
                  style: kucukStil,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Divider(
                  thickness: 2.0,
                ),
                Expanded(child: boyKilo(' BOYUNUZ:')),

                Divider(
                  thickness: 2.0,
                ),
                Expanded(child: boyKilo('   KİLONUZ:   ')),
                Divider(
                  thickness: 2.0,
                ),
                Expanded(child: dateTimem(),),
                Divider(
                  thickness: 2.0,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    fixedSize: const Size(300.0,50.0),
                  ),
                  child: Text(
                    'SONRAKİ',
                    style: buyukStil,
                  ),
                  onPressed:(){
                    setState(() {
                      Navigator.pushNamed(context, '/vucutbolum');

                    });
                  },

                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row boyKilo(String label) {
    return Row (
      mainAxisAlignment: MainAxisAlignment.center,
     
      children: [
        Text(
          label,
          style: kucukStil,
        ),
        SizedBox(
          width: 30.0,
        ),
        Text(
          label == ' BOYUNUZ:' ? '$boy cm' : '$kilo kg',
          style: buyukStil,
        ),
        SizedBox(
          width: 30.0,
        ),
     Row(children: [
       ButtonTheme(
         minWidth: 18.0,
         child: TextButton(
           style: stilButton,
           onPressed: () {
             setState(() {
               label == ' BOYUNUZ:' ? boy++ : kilo++;
             });
           },
           child: Text(
             '+',
             style: kucukStil,
           ),
         ),
       ),
       SizedBox(
         width: 10.0,
       ),
       ButtonTheme(
         minWidth: 18.0,
         child: TextButton(
           style: stilButton,
           onPressed: () {
             setState(() {
               label == 'BOYUNUZ:' ? boy-- : kilo--;
             });
           },
           child: Text(
             '-',
             style: kucukStil,
           ),
         ),
       ),
     ],),
      ],
    );
  }
}
