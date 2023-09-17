import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';

import '../../../models/doingActionsList.dart';


class ezBarBiceps extends StatefulWidget {
  const  ezBarBiceps({Key? key}) : super(key: key);

  @override
  State< ezBarBiceps > createState() => _ezBarBicepsState();
}

class _ezBarBicepsState extends State<ezBarBiceps> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  @override
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.ezbarbicepcurllst,
      kilitipucu: kilitipucu.ezbarbicepcurlipucu,
      images: 'assets/actionImages/onkolhareketleri/ezbarreverse.jpeg',
      videos: 'assets/actionVideo/onKolHareket/ez-bar-bicep-curl.mp4',
      text: 'Ez-Bar Curl',
    );
  }
}
