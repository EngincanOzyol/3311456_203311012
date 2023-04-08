import 'package:flutter/material.dart';
import 'package:flutter2/style.dart';

import 'harektlerWidget.dart';

class arkakolhareket extends StatefulWidget {
  const arkakolhareket({Key? key}) : super(key: key);

  @override
  State<arkakolhareket> createState() => _arkakolhareketState();
}

class _arkakolhareketState extends State<arkakolhareket> {
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
            'Hangi arka kol hareketini ögrenmek istiyorsunuz?',
            style: buyukStil,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Bench dips',
              imageIsmi: 'images/arkakolhareketleri/benchdip.jpeg'),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Cable push down',
              imageIsmi: 'images/arkakolhareketleri/Cablepushdown.jpeg'),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Dumbel kick back',
              imageIsmi: 'images/arkakolhareketleri/dambilkickback.jpeg'),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'Overhead extension',
              imageIsmi: 'images/arkakolhareketleri/overhead.jpeg'),
          SizedBox(
            height: 15.0,
          ),
          hareketler(
              hareketIsmi: 'lying triceps',
              imageIsmi: 'images/arkakolhareketleri/lying.jpeg'),
        ],
      ),
    );
  }
}
