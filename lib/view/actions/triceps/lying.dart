import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class lying extends StatefulWidget {
  const  lying({Key? key}) : super(key: key);

  @override
  State< lying > createState() => _lyingState();
}

class _lyingState extends State<lying> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  @override
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.lyingtricepslst,
      kilitipucu: kilitipucu.lyingtricepsipucu,
      images: 'assets/actionImages/arkakolhareketleri/lying.jpeg',
      videos: 'assets/actionVideo/ArkaKolHareket/lyingtriceps.mp4',
      text: 'Lying Triceps',
    );
  }
}
