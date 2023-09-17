
import 'package:flutter/material.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';


import '../../../models/doingActionsList.dart';









class barfixHareket extends StatefulWidget  {
   barfixHareket({Key? key}) : super(key: key);
  @override
  State<barfixHareket> createState() => _barfixHareketState();
}
class _barfixHareketState extends State<barfixHareket> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(
      list: yapilisHareketler.barfixlst,
      kilitipucu: kilitipucu.barfixipuc,
      videos: 'assets/actionVideo/Sirthareket/barfix.mp4',
      images: 'assets/actionImages/sirtHareketleri/barfix.jpg',
    text: 'Barfix',
    );














  }


}
