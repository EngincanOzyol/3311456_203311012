import 'package:flutter/material.dart';
import 'package:flutter2/style.dart';

import '../../widget/actionsWidget.dart';

class arkakolhareket extends StatefulWidget {
  const arkakolhareket({Key? key}) : super(key: key);

  @override
  State<arkakolhareket> createState() => _arkakolhareketState();
}

class _arkakolhareketState extends State<arkakolhareket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SizedBox(
            height: 90.0,
          ),
          Text(
            'Hangi arka kol hareketini ögrenmek istiyorsunuz?',
            style: TextStyle(fontFamily: 'GentiumBookBasic',fontSize: 30.0,color: Colors.indigoAccent),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Bench Dips',
              imageIsmi: 'assets/actionImages/arkakolhareketleri/benchdip.jpeg',route: '/benchDips',),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Cable Pushdown',
              imageIsmi: 'assets/actionImages/arkakolhareketleri/Cablepushdown.jpeg',route: '/cablePushDown',),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Dumbbell Kickback',
              imageIsmi: 'assets/actionImages/arkakolhareketleri/dambilkickback.jpeg',route: '/dumbellKickBack',),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Over Head Extension',
              imageIsmi: 'assets/actionImages/arkakolhareketleri/overhead.jpeg',route: '/overHeadExtension',),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Lying Triceps',
              imageIsmi: 'assets/actionImages/arkakolhareketleri/lying.jpeg',route: '/lyingTriceps',),
        ],
      ),
    );
  }
}
