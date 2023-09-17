import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class dumbellFront extends StatefulWidget {
  const dumbellFront({Key? key}) : super(key: key);

  @override
  State<dumbellFront> createState() => _dumbellFrontState();
}

class _dumbellFrontState extends State<dumbellFront> {
  @override
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.dumbellfrontlst,
      kilitipucu: kilitipucu.dumbellfrontipucu,
      images: 'assets/actionImages/omuzhareketleri/dambilfront.jpeg',
      videos: 'assets/actionVideo/OmuzHareket/dumbbellfrontraise.mp4',
      text: 'Dumbbell Front Raise',
    );
  }
}
