import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class overHeadExtension extends StatefulWidget {
  const  overHeadExtension({Key? key}) : super(key: key);

  @override
  State< overHeadExtension > createState() => _overHeadExtensionState();
}

class _overHeadExtensionState extends State<overHeadExtension> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  @override
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.overheadextensionlst,
      kilitipucu: kilitipucu.overheadextensionipucu,
      images: 'assets/actionImages/arkakolhareketleri/overhead.jpeg',
      videos: 'assets/actionVideo/ArkaKolHareket/overheadExtension.mp4',
      text: 'Over Head Extension',
    );
  }
}
