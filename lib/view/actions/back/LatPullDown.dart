
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import '../../../models/doingActionsList.dart';
import '../../doingActionsScreen/yapilis.dart';


class latpulldown extends StatefulWidget {
  const latpulldown({Key? key}) : super(key: key);

  @override
  State<latpulldown> createState() => _latpulldownState();
}

class _latpulldownState extends State<latpulldown> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {

    return  yapilisHareket(kilitipucu: kilitipucu.latpulldownipucu,list:yapilisHareketler.dumbellrowlst,
      images:'assets/actionImages/sirtHareketleri/latpuldown.gif',
      videos:'assets/actionVideo/Sirthareket/machine-lat-pulldowns.mp4',
    text: 'Lat Pulldown',
    );
  }
}
