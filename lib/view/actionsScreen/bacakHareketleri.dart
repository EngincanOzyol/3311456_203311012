import 'package:flutter/material.dart';
import 'package:flutter2/style.dart';

import '../../widget/actionsWidget.dart';

class bacakhareket extends StatefulWidget {
  const bacakhareket({Key? key}) : super(key: key);

  @override
  State<bacakhareket> createState() => _bacakhareketState();
}

class _bacakhareketState extends State<bacakhareket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 90.0,),
          Text(
            'Hangi bacak hareketini ögrenmek istiyorsunuz',
            style: TextStyle(fontFamily: 'GentiumBookBasic',fontSize: 30.0,color: Colors.indigoAccent),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.0,),
          hareketler(
              hareketIsmi: 'Leg Curl',
              imageIsmi: 'assets/actionImages/bacakhareketleri/legcurl.jpeg',route: '/legCurl',),
          SizedBox(height: 15.0,),
          hareketler(
              hareketIsmi: 'Leg Extension',
              imageIsmi: 'assets/actionImages/bacakhareketleri/legextension.jpeg',route: '/legExtension',),
          SizedBox(height: 15.0,),
          hareketler(
              hareketIsmi: 'Squat',
              imageIsmi: 'assets/actionImages/bacakhareketleri/squat.jpeg',route: '/squat',),
          SizedBox(height: 15.0,),
          hareketler(
              hareketIsmi: 'stepUp',
              imageIsmi: 'assets/actionImages/bacakhareketleri/stepup.jpeg',route:'/stepUp'),
          SizedBox(height: 15.0,),
          hareketler(
              hareketIsmi: 'Leg Press',
              imageIsmi: 'assets/actionImages/bacakhareketleri/legpress.jpeg',route: '/legPress',),
        ],
      ),
    );
  }
}
