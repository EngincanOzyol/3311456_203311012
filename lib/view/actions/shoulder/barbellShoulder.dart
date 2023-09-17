import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class barbellCurl extends StatefulWidget {
  const barbellCurl({Key? key}) : super(key: key);

  @override
  State<barbellCurl> createState() => _barbellCurlState();
}

class _barbellCurlState extends State<barbellCurl> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.barbellshoulderlst,
      kilitipucu: kilitipucu.barbellshoulderipucu,
      images: 'assets/actionImages/omuzhareketleri/barbel.jpeg',
      videos: 'assets/actionVideo/OmuzHareket/BarbellShoulder.mp4',
      text: 'Barbell Shoulder',

    );
  }
}
