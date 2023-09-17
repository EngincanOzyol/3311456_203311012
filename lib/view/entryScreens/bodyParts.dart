

import '../../widget/actionsWidget.dart';
import 'package:flutter/material.dart';

import 'package:flutter2/style.dart';


class vucutBolum extends StatefulWidget {
  @override
  State<vucutBolum> createState() => _vucutBolumState();
}
class _vucutBolumState extends State<vucutBolum> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: buildListView(),
      ),
    );
  }
  ListView buildListView() {
    return ListView(
          children: [
            Column(children: [Text('ODAK BÖLGENİZ NERESİ?',style: buyukStil,),
              Text('Sorunlu bölgenizi seçin,koçunuz\n ihtiyacınız olan bölgeyi karşılayacaktır.',style: kucukStil,),],),

            hareketler(
                hareketIsmi: 'SIRT', imageIsmi: 'assets/bodyImages/sirt.jpg', route: '/back',),
            hareketler(hareketIsmi:'GÖGÜS' , imageIsmi: 'assets/bodyImages/gogus.jpeg',route: '/chest', ),

            hareketler(hareketIsmi:'OMUZ' , imageIsmi: 'assets/bodyImages/omuz.jpg',route: '/omuz', ),

            hareketler(hareketIsmi:'ÖN KOL' , imageIsmi: 'assets/bodyImages/onkol.jpg',route: '/onkol',),

            hareketler(hareketIsmi:'ARKA KOL' , imageIsmi: 'assets/bodyImages/arkakol.jpg',route: '/arkakol',),

            hareketler(hareketIsmi:'BACAK' , imageIsmi: 'assets/bodyImages/bacak.jpg',route: '/bacak',),

          ],

      );
  }
}


