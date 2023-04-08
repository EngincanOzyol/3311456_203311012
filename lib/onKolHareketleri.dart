import 'package:flutter/material.dart';
import 'package:flutter2/style.dart';

import 'harektlerWidget.dart';

class onKolHareket extends StatefulWidget {
  const onKolHareket({Key? key}) : super(key: key);

  @override
  State<onKolHareket> createState() => _onKolHareketState();
}

class _onKolHareketState extends State<onKolHareket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          SizedBox(
            height: 90.0,
          ),
          Text(
            'Hangi ön kol hareketini öğrenmek istiyorsunuz',
            style: buyukStil,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Cable curls',
              imageIsmi: 'images/onkolhareketleri/cablecurl.jpeg'),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Concentration curl',
              imageIsmi: 'images/onkolhareketleri/concentration.jpeg'),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'dumbell preacher ',
              imageIsmi: 'images/onkolhareketleri/dambilpreacher.jpeg'),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Ez bar reverse ',
              imageIsmi: 'images/onkolhareketleri/ezbarreverse.jpeg'),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Hummer curl ',
              imageIsmi: 'images/onkolhareketleri/hummercurl.jpeg'),
        ],
      ),
    );
  }
}
