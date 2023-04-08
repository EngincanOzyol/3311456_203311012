import 'package:flutter/material.dart';
import 'package:flutter2/arkaKolHareketleri.dart';
import 'package:flutter2/bacakHareketleri.dart';
import 'package:flutter2/boyKiloDogumtarihi.dart';
import 'package:flutter2/cinsiyet.dart';
import 'package:flutter2/gogusHareket.dart';
import 'package:flutter2/omuzHareketleri.dart';
import 'package:flutter2/onKolHareketleri.dart';
import 'package:flutter2/profil.dart';
import 'package:flutter2/sirtHareket.dart';
import 'package:flutter2/vucutBolumleri.dart';

void main() {
  runApp(const screen());
}

class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/cinsiyet': (context) => const cinsiyet(),
        '/boykilo' :(context)=>boykiloDogumTarihi(),
        '/vucutbolum':(context)=>vucutBolum(),
        '/sirt':(context)=>sirthareket(),
        '/gogus':(context)=>gogushareket(),
        '/onkol':(context)=>onKolHareket(),
        '/arkakol':(context)=>arkakolhareket(),
        '/bacak':(context)=>bacakhareket(),
        '/omuz':(context)=>omuzHareket(),

      },
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: profil(),
      ),
    );
  }
}
