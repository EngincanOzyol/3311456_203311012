import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';

class cablePushDown extends StatefulWidget {
  const  cablePushDown({Key? key}) : super(key: key);

  @override
  State< cablePushDown > createState() => _cablePushDownState();
}

class _cablePushDownState extends State<cablePushDown> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  @override
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.cablepushdownlst,
      kilitipucu: kilitipucu.cablepushdownipucu,
      images: 'assets/actionImages/arkakolhareketleri/Cablepushdown.jpeg',
      videos: 'assets/actionVideo/ArkaKolHareket/cablePushDown.mp4',
      text: 'Cable Pushdown',
    );
  }
}
