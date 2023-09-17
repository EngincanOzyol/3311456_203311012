import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class hammerCurl extends StatefulWidget {
  const  hammerCurl({Key? key}) : super(key: key);

  @override
  State< hammerCurl > createState() => _hammerCurlState();
}

class _hammerCurlState extends State<hammerCurl> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  @override
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.hammercurllst,
      kilitipucu: kilitipucu.hammercurlipucu,
      images: 'assets/actionImages/onkolhareketleri/hummercurl.jpeg',
      videos: 'assets/actionVideo/onKolHareket/hammerCurl.mp4',
      text: 'Hammer Curl',
    );
  }
}
