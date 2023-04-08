import 'package:flutter/material.dart';
import 'package:flutter2/harektlerWidget.dart';
import 'package:flutter2/style.dart';

class omuzHareket extends StatefulWidget {
  const omuzHareket({Key? key}) : super(key: key);

  @override
  State<omuzHareket> createState() => _omuzHareketState();
}

class _omuzHareketState extends State<omuzHareket> {
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
            'Hangi omuz hareketini ögrenmek istiyorsunuz',
            style: buyukStil,
            textAlign: TextAlign.center,
          ),
          hareketler(
              hareketIsmi: 'Barbell curl',
              imageIsmi: 'images/omuzhareketleri/barbel.jpeg'),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'dumbell front',
              imageIsmi: 'images/omuzhareketleri/dambilfront.jpeg'),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'lateral raise',
              imageIsmi: 'images/omuzhareketleri/lateries.jpeg'),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'dumbbell shoulder',
              imageIsmi: 'images/omuzhareketleri/shoulderpress.jpeg'),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Bent over',
              imageIsmi: 'images/omuzhareketleri/bentover.jpeg'),
        ],
      ),
    );
  }
}
