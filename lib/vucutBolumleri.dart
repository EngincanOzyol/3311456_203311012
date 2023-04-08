

import 'dart:ui';


import 'package:flutter2/arkaKolHareketleri.dart';
import 'package:flutter2/bacakHareketleri.dart';
import 'package:flutter2/omuzHareketleri.dart';
import 'package:flutter2/onKolHareketleri.dart';

import 'harektlerWidget.dart';


import 'package:flutter/material.dart';
import 'package:flutter2/gogusHareket.dart';
import 'package:flutter2/sirtHareket.dart';
import 'package:flutter2/style.dart';





class vucutBolum extends StatefulWidget {
  const vucutBolum({Key? key}) : super(key: key);

  @override
  State<vucutBolum> createState() => _vucutBolumState();
}

class _vucutBolumState extends State<vucutBolum> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70.0,),
            
            Column(children: [Text('ODAK BÖLGENİZ NERESİ?',style: buyukStil,),
              Text('Sorunlu bölgenizi seçin,koçunuz\n ihtiyacınız olan bölgeyi karşılayacaktır.',style: kucukStil,),],),

            hareketler(
                hareketIsmi: 'SIRT', imageIsmi: 'images/sirt.jpg', route: '/sirt',),

            hareketler(hareketIsmi:'GÖGÜS' , imageIsmi: 'images/gogus.jpeg',route: '/gogus', ),

            hareketler(hareketIsmi:'OMUZ' , imageIsmi: 'images/omuz.jpg',route: '/omuz', ),

            hareketler(hareketIsmi:'ÖN KOL' , imageIsmi: 'images/onkol.jpg',route: '/onkol',),

            hareketler(hareketIsmi:'ARKA KOL' , imageIsmi: 'images/arkakol.jpg',route: '/arkakol',),

            hareketler(hareketIsmi:'BACAK' , imageIsmi: 'images/bacak.jpg',route: '/bacak',),

          ],
        ),
      ),
    );




  }
}


