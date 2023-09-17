import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class legPress extends StatefulWidget {
  const  legPress({Key? key}) : super(key: key);

  @override
  State< legPress > createState() => _legPressState();
}

class _legPressState extends State<legPress> {
  @override
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.legCurlLst,
      kilitipucu: kilitipucu.legCurlipucu,
      images: 'assets/actionImages/bacakhareketleri/legpress.jpeg',
      videos: 'assets/actionVideo/BacakHareket/legPress.mp4',
      text: 'Leg Press',
    );
  }
}
