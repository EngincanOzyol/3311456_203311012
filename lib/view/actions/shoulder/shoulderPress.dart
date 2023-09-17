import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class shoulder extends StatefulWidget {
  const shoulder({Key? key}) : super(key: key);

  @override
  State<shoulder> createState() => _shoulderState();
}

class _shoulderState extends State<shoulder> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.shoulderpresslst,
      kilitipucu: kilitipucu.shoulderpressipucu,
      images: 'assets/actionImages/omuzhareketleri/shoulderpress.jpeg',
      videos: 'assets/actionVideo/OmuzHareket/dumbellShoulder.mp4',
      text: 'Dumbbell Shoulder Press',
    );
  }
}
