import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class cableCurls extends StatefulWidget {
  const  cableCurls({Key? key}) : super(key: key);

  @override
  State< cableCurls > createState() => _cableCurlsState();
}

class _cableCurlsState extends State<cableCurls> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  @override
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.cablecurllst,
      kilitipucu: kilitipucu.cablecurlipucu,
      images: 'assets/actionImages/onkolhareketleri/cablecurl.jpeg',
      videos: 'assets/actionVideo/onKolHareket/cableCurls.mp4',
      text: 'Cable Curls',
    );
  }
}
