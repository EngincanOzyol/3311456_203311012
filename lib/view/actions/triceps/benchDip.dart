import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class benchDip extends StatefulWidget {
  const  benchDip({Key? key}) : super(key: key);

  @override
  State< benchDip > createState() => _benchDipState();
}

class _benchDipState extends State<benchDip> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  @override
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.benchdipslst,
      kilitipucu: kilitipucu.benchdipsipucu,
      images: 'assets/actionImages/arkakolhareketleri/benchdip.jpeg',
      videos: 'assets/actionVideo/ArkaKolHareket/benchdips.mp4',
      text: 'Bench Dips',
    );
  }
}
