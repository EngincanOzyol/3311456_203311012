import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class legExtension extends StatefulWidget {
  const legExtension({Key? key}) : super(key: key);

  @override
  State<legExtension> createState() => _legExtensionState();
}

class _legExtensionState extends State<legExtension> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.legCurlLst,
      kilitipucu: kilitipucu.legCurlipucu,
      images: 'assets/actionImages/bacakhareketleri/legextension.jpeg',
      videos: 'assets/actionVideo/BacakHareket/legExtension.mp4',
      text: 'Leg Extension',

    );
  }
}
