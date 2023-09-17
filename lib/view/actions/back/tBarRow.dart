

import 'package:flutter/material.dart';

import '../../../models/doingActionsList.dart';
import '../../doingActionsScreen/yapilis.dart';





  class tbarRow extends StatefulWidget {
  const tbarRow({Key? key}) : super(key: key);

  @override
  State<tbarRow> createState() => _tbarRowState();
}

class _tbarRowState extends State<tbarRow> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(kilitipucu: kilitipucu.tbarRowipucu,
      list:yapilisHareketler.tBarRowlst,images:'assets/actionImages/sirtHareketleri/Standing T-Bar Row.jpg',
      videos:'assets/actionVideo/Sirthareket/t-bar-row.mp4',
    text: 'T-Bar Row',
    );
  }
}
