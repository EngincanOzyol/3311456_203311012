
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../../../models/doingActionsList.dart';





class benchpress extends StatefulWidget {
   benchpress({Key? key}) : super(key: key);

  @override
  State<benchpress> createState() => _benchpressState();
}

class _benchpressState extends State<benchpress> {
   ipucu kilitipucu=ipucu();
   yapilis1 yapilisHareketler=yapilis1();

  Widget build(BuildContext context) {
          return yapilisHareket(
            list:yapilisHareketler.benchPresslst,
            kilitipucu: kilitipucu.benchpressipucu,
            images:'assets/actionImages/gogushareketleri/bench.jpeg' ,
            videos:'assets/actionVideo/gogusHareket/BenchPress.mp4',
            text: 'Bench Press',
          );
  }
}
