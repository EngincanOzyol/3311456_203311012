import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';





class bentOver extends StatefulWidget {
  const bentOver({Key? key}) : super(key: key);

  @override
  State<bentOver> createState() => _bentOverState();
}

class _bentOverState extends State<bentOver> {
  @override
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.bentoverlst,
      kilitipucu: kilitipucu.bentoveripucu,
      images:'assets/actionImages/omuzhareketleri/bentover.jpeg' ,
      videos: 'assets/actionVideo/OmuzHareket/bentover.mp4',
      text: 'Bent Over',
    );
  }
}

