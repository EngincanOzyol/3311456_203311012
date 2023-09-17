import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class legCurl extends StatefulWidget {
  const legCurl({Key? key}) : super(key: key);

  @override
  State<legCurl> createState() => _legCurlState();
}

class _legCurlState extends State<legCurl> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.legCurlLst,
      kilitipucu: kilitipucu.legCurlipucu,
      images: 'assets/actionImages/bacakhareketleri/legcurl.jpeg',
      videos: 'assets/actionVideo/BacakHareket/Lying_Leg_Curl.mp4',
      text: 'Leg Curl',
    );
  }
}
