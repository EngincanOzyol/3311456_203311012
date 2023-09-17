

import 'package:flutter/material.dart';
import 'package:flutter2/style.dart';

import '../../widget/actionsWidget.dart';
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
            body: Column(
              children: [
                SizedBox(height: 90.0,),
                Text('Hangi gogus hareketini ögrenmek istiyorsunuz?',style: TextStyle(fontFamily: 'GentiumBookBasic',fontSize: 30.0,color: Colors.indigoAccent),textAlign: TextAlign.center,),
                SizedBox(height: 15.0,),
                hareketler(
                    hareketIsmi: 'Bench Press',
                    imageIsmi: 'assets/actionImages/gogushareketleri/bench.jpeg',route:'/benchpress',),
                SizedBox(height: 15.0,),
                hareketler(
                    hareketIsmi: 'Cable CrossOver',
                    imageIsmi: 'assets/actionImages/gogushareketleri/cable.jpeg',route: '/cable',),
                SizedBox(height: 15.0,),
                hareketler(
                    hareketIsmi: 'Dumbell Fly',
                    imageIsmi: 'assets/actionImages/gogushareketleri/dambilfly.jpeg',route:'/dumbellFly',),
                SizedBox(height: 15.0,),
                hareketler(
                    hareketIsmi: 'Decline Dumbbell',
                    imageIsmi: 'assets/actionImages/gogushareketleri/decline.png',route:'/decline',),
                SizedBox(height: 15.0,),
                hareketler(
                    hareketIsmi: 'Fly Machine',
                    imageIsmi: 'assets/actionImages/gogushareketleri/fly.jpeg',route:'/flymachine',),
              ],
            ));
  }
}
