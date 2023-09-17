import 'package:flutter/material.dart';
import 'package:flutter2/widget/actionsWidget.dart';
import 'package:flutter2/style.dart';

class sirthareket extends StatefulWidget {
  const sirthareket({Key? key}) : super(key: key);

  @override
  State<sirthareket> createState() => _sirthareketState();
}

class _sirthareketState extends State<sirthareket> {
  @override
  Widget build(BuildContext context) {
    return
         Scaffold(
            body: Column(
      children: [
        SizedBox(height: 90.0,),
        Text('Hangi sırt hareketini ögrenmek istiyorsunuz?',style: TextStyle(fontFamily: 'GentiumBookBasic',fontSize: 30.0,color: Colors.indigoAccent),textAlign: TextAlign.center,),
       // Text('istiyorsunuz? ',style: buyukStil,textAlign: TextAlign.center),
        hareketler(
            hareketIsmi: 'Barfix',
            imageIsmi: 'assets/actionImages/sirtHareketleri/barfix.jpg',route: '/barfix'),
        SizedBox(height: 15.0,),
        hareketler(
            hareketIsmi: 'Deadlift',
            imageIsmi: 'assets/actionImages/sirtHareketleri/deadlift.jpg',route: '/deadlift',),
        SizedBox(height: 15.0,),

        hareketler(
            hareketIsmi: 'Dumbell Row',
            imageIsmi: 'assets/actionImages/sirtHareketleri/dumbellrow.jpg',route:'/dumbellrow',),
        SizedBox(height: 15.0,),
        hareketler(
            hareketIsmi: 'Lat Pulldown',
            imageIsmi: 'assets/actionImages/sirtHareketleri/latpuldown.gif',route:'/latpuldown',),
        SizedBox(height: 15.0,),
        hareketler(
            hareketIsmi: 'T-bar row',
            imageIsmi: 'assets/actionImages/sirtHareketleri/Standing T-Bar Row.jpg',route:'/tbarRow',),
      ],
    ));
  }
}
