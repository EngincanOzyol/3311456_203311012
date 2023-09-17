import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class stepUp extends StatefulWidget {
  const  stepUp({Key? key}) : super(key: key);

  @override
  State< stepUp > createState() => _stepUpState();
}

class _stepUpState extends State<stepUp> {
  @override
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.legCurlLst,
      kilitipucu: kilitipucu.legCurlipucu,
      images: 'assets/actionImages/bacakhareketleri/stepup.jpeg',
      videos: 'assets/actionVideo/BacakHareket/stepUp.mp4',
      text: 'stepUp',
    );
  }
}
