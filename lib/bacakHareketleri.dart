import 'package:flutter/material.dart';
import 'package:flutter2/style.dart';

import 'harektlerWidget.dart';

class bacakhareket extends StatefulWidget {
  const bacakhareket({Key? key}) : super(key: key);

  @override
  State<bacakhareket> createState() => _bacakhareketState();
}

class _bacakhareketState extends State<bacakhareket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          SizedBox(height: 90.0,),
          Text(
            'Hangi bacak hareketini ögrenmek istiyorsunuz',
            style: buyukStil,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.0,),
          hareketler(
              hareketIsmi: 'Leg curl',
              imageIsmi: 'images/bacakhareketleri/legcurl.jpeg'),
          SizedBox(height: 15.0,),
          hareketler(
              hareketIsmi: 'Leg extension',
              imageIsmi: 'images/bacakhareketleri/legextension.jpeg'),
          SizedBox(height: 15.0,),
          hareketler(
              hareketIsmi: 'Squat',
              imageIsmi: 'images/bacakhareketleri/squat.jpeg'),
          SizedBox(height: 15.0,),
          hareketler(
              hareketIsmi: 'Step up',
              imageIsmi: 'images/bacakhareketleri/stepup.jpeg'),
          SizedBox(height: 15.0,),
          hareketler(
              hareketIsmi: 'Leg press',
              imageIsmi: 'images/bacakhareketleri/legpress.jpeg'),
        ],
      ),
    );
  }
}
