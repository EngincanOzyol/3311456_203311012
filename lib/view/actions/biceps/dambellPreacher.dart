import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class dambellPreacher extends StatefulWidget {
  const  dambellPreacher({Key? key}) : super(key: key);

  @override
  State< dambellPreacher > createState() => _dambellPreacherState();
}

class _dambellPreacherState extends State<dambellPreacher> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  @override
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.dumbellpreacherlst,
      kilitipucu: kilitipucu.dumbellpreacheripucu,
      images: 'assets/actionImages/onkolhareketleri/dambellpreacher.jpeg',
      videos: 'assets/actionVideo/onKolHareket/Dumbbell-Preacher.mp4',
      text: 'Dumbbell Preacher',
    );
  }
}
