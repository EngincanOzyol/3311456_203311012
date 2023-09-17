import 'package:flutter/material.dart';
import 'package:flutter2/style.dart';

import '../../widget/actionsWidget.dart';

class onKolHareket extends StatefulWidget {
  const onKolHareket({Key? key}) : super(key: key);

  @override
  State<onKolHareket> createState() => _onKolHareketState();
}

class _onKolHareketState extends State<onKolHareket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SizedBox(
            height: 90.0,
          ),
          Text(
            'Hangi ön kol hareketini öğrenmek istiyorsunuz',
            style: TextStyle(fontFamily: 'GentiumBookBasic',fontSize: 30.0,color: Colors.indigoAccent),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Cable Curls',
              imageIsmi: 'assets/actionImages/onkolhareketleri/cablecurl.jpeg',route: '/cableCurls',),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Concentration Curl',
              imageIsmi: 'assets/actionImages/onkolhareketleri/concentration.jpeg',route:'/concentrationCurl',),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Dumbbell Preacher ',
              imageIsmi: 'assets/actionImages/onkolhareketleri/dambellpreacher.jpeg',route: '/dumbellPreacher',),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Ez-Bar Curl ',
              imageIsmi: 'assets/actionImages/onkolhareketleri/ezbarreverse.jpeg',route: '/ezBarBiceps',),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Hammer Curl ',
              imageIsmi: 'assets/actionImages/onkolhareketleri/hummercurl.jpeg',route: '/hammerCurl',),
        ],
      ),
    );
  }
}
