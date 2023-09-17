import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';

class squat extends StatefulWidget {
  const  squat({Key? key}) : super(key: key);

  @override
  State< squat > createState() => _squatState();
}

class _squatState extends State<squat> {
  @override
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.legCurlLst,
      kilitipucu: kilitipucu.legCurlipucu,
      images: 'assets/actionImages/bacakhareketleri/squat.jpeg',
      videos: 'assets/actionVideo/BacakHareket/squat.mp4',
      text: 'Squat',
    );
  }
}
