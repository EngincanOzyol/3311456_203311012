import 'package:flutter/material.dart';
import 'package:flutter2/harektlerWidget.dart';
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
             backgroundColor: Colors.teal,
            body: Column(
      children: [
        SizedBox(height: 90.0,),
        Text('Hangi sırt hareketini ögrenmek istiyorsunuz?',style: buyukStil,textAlign: TextAlign.center,),
       // Text('istiyorsunuz? ',style: buyukStil,textAlign: TextAlign.center),
        hareketler(
            hareketIsmi: 'Barfix',
            imageIsmi: 'images/sirtHareketleri/barfix.jpg'),
        SizedBox(height: 15.0,),
        hareketler(
            hareketIsmi: 'Deadlift',
            imageIsmi: 'images/sirtHareketleri/deadlift.jpg'),
        SizedBox(height: 15.0,),

        hareketler(
            hareketIsmi: 'Dumbellrow',
            imageIsmi: 'images/sirtHareketleri/dumbellrow.jpg'),
        SizedBox(height: 15.0,),
        hareketler(
            hareketIsmi: 'Latpuldown',
            imageIsmi: 'images/sirtHareketleri/latpuldown.gif'),
        SizedBox(height: 15.0,),
        hareketler(
            hareketIsmi: 'T-bar row',
            imageIsmi: 'images/sirtHareketleri/Standing T-Bar Row.jpg'),
      ],
    ));
  }
}
