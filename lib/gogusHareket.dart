

import 'package:flutter/material.dart';
import 'package:flutter2/style.dart';

import 'harektlerWidget.dart';
class gogushareket extends StatefulWidget {
  const gogushareket({Key? key}) : super(key: key);

  @override
  State<gogushareket> createState() => _gogushareketState();
}

class _gogushareketState extends State<gogushareket> {
  @override
  Widget build(BuildContext context) {
    return
         Scaffold(
             backgroundColor: Colors.teal,
            body: Column(
              children: [
                SizedBox(height: 90.0,),
                Text('Hangi gogus hareketini ögrenmek istiyorsunuz?',style: buyukStil,textAlign: TextAlign.center,),
                SizedBox(height: 15.0,),
                hareketler(
                    hareketIsmi: 'Bench press',
                    imageIsmi: 'images/gogushareketleri/bench.jpeg'),
                SizedBox(height: 15.0,),
                hareketler(
                    hareketIsmi: 'Cable crossover',
                    imageIsmi: 'images/gogushareketleri/cable.jpeg'),
                SizedBox(height: 15.0,),
                hareketler(
                    hareketIsmi: 'Dumbbell flyes',
                    imageIsmi: 'images/gogushareketleri/dambilfly.jpeg'),
                SizedBox(height: 15.0,),
                hareketler(
                    hareketIsmi: 'Decline dumbbell',
                    imageIsmi: 'images/gogushareketleri/decline.png'),
                SizedBox(height: 15.0,),
                hareketler(
                    hareketIsmi: 'Fly machine',
                    imageIsmi: 'images/gogushareketleri/fly.jpeg'),
              ],
            ));
  }
}
