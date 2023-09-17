

import 'package:flutter2/models/doingActionsList.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';
import 'package:flutter/material.dart';


class cableCrossOver extends StatefulWidget {
  const cableCrossOver({Key? key}) : super(key: key);

  @override
  State<cableCrossOver> createState() => _cableCrossOverState();
}

class _cableCrossOverState extends State<cableCrossOver> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(
      list:yapilisHareketler.cablelst ,
      kilitipucu: kilitipucu.cableipucu,
      images: 'assets/actionImages/gogushareketleri/cable.jpeg',
      videos: 'assets/actionVideo/gogusHareket/CableCrossover.mp4',
      text: 'Cable CrossOver',
    );
  }
}
