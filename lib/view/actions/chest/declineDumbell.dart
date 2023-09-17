
import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class declineDumbell extends StatefulWidget {
  const declineDumbell({Key? key}) : super(key: key);

  @override
  State<declineDumbell> createState() => _declineDumbellState();
}

class _declineDumbellState extends State<declineDumbell> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();

  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.declinelst,
      kilitipucu: kilitipucu.declineipucu,
      images: 'assets/actionImages/gogushareketleri/decline.png',
      videos: 'assets/actionVideo/gogusHareket/declinedumbell.mp4',
      text: 'Decline Dumbbell',
    );
  }
}
