

import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class dumbelFly extends StatefulWidget {
  const dumbelFly({Key? key}) : super(key: key);

  @override
  State<dumbelFly> createState() => _dumbelFlyState();
}
class _dumbelFlyState extends State<dumbelFly> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.dumbellflylst,
      kilitipucu: kilitipucu.dumbellflyipucu,
      images: 'assets/actionImages/gogushareketleri/dambilfly.jpeg',
      videos: 'assets/actionVideo/gogusHareket/FlatFly.mp4',
      text: 'Dumbell Fly',
    );
  }
}
