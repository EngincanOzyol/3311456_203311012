import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class concentrationCurl extends StatefulWidget {
  const  concentrationCurl({Key? key}) : super(key: key);

  @override
  State< concentrationCurl > createState() => _concentrationCurlState();
}

class _concentrationCurlState extends State<concentrationCurl> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  @override
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.cablecurllst,
      kilitipucu: kilitipucu.cablecurlipucu,
      images: 'assets/actionImages/onkolhareketleri/concentration.jpeg',
      videos: 'assets/actionVideo/onKolHareket/concentrationCurl.mp4',
      text: 'Concentration Curl',
    );
  }
}
