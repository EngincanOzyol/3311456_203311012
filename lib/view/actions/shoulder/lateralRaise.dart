import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';

class lateralRaise extends StatefulWidget {
  const lateralRaise({Key? key}) : super(key: key);

  @override
  State<lateralRaise> createState() => _lateralRaiseState();
}

class _lateralRaiseState extends State<lateralRaise> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.laterieslst,
      kilitipucu: kilitipucu.lateriesipucu,
      images: 'assets/actionImages/omuzhareketleri/lateries.jpeg',
      videos: 'assets/actionVideo/OmuzHareket/lateralRaise.mp4',
      text: 'Dumbbell Lateral Raise',
    );
  }
}
