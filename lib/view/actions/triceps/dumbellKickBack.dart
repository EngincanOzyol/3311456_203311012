import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';

class dumbellKickBack extends StatefulWidget {
  const  dumbellKickBack({Key? key}) : super(key: key);

  @override
  State< dumbellKickBack > createState() => _dumbellKickBackState();
}

class _dumbellKickBackState extends State<dumbellKickBack> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  @override
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.dumbellkickbacklst,
      kilitipucu: kilitipucu.dumbellkickbackipucu,
      images: 'assets/actionImages/arkakolhareketleri/dambilkickback.jpeg',
      videos: 'assets/actionVideo/ArkaKolHareket/dumbellKickBack.mp4',
      text: 'Dumbbell Kickback',
    );
  }
}
