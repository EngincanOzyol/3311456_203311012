import 'package:flutter/material.dart';
import 'package:flutter2/widget/actionsWidget.dart';
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

      body: Column(
        children: [
          SizedBox(
            height: 90.0,
          ),
          Text(
            'Hangi omuz hareketini ögrenmek istiyorsunuz',
            style: TextStyle(fontFamily: 'GentiumBookBasic',fontSize: 30.0,color: Colors.indigoAccent),
            textAlign: TextAlign.center,
          ),
          hareketler(
              hareketIsmi: 'Barbell Shoulder',
              imageIsmi: 'assets/actionImages/omuzhareketleri/barbel.jpeg',route: '/barbellCurl',),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Dumbbell Front Raise',
              imageIsmi: 'assets/actionImages/omuzhareketleri/dambilfront.jpeg',route: '/dumbellFront',),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Dumbbell Lateral Raise',
              imageIsmi: 'assets/actionImages/omuzhareketleri/lateries.jpeg',route: '/lateralRaise',),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Dumbbell Shoulder Press',
              imageIsmi: 'assets/actionImages/omuzhareketleri/shoulderpress.jpeg',route:'/shoulderPress' ,),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Bent Over',
              imageIsmi: 'assets/actionImages/omuzhareketleri/bentover.jpeg',route: '/bentOver',),
        ],
      ),
    );
  }
}
