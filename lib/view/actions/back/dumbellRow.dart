
import 'package:flutter/material.dart';

import '../../../models/doingActionsList.dart';
import '../../doingActionsScreen/yapilis.dart';



class dumbellrow extends StatefulWidget {
  const dumbellrow({Key? key}) : super(key: key);
  @override
  State<dumbellrow> createState() => _dumbellrowState();
}
class _dumbellrowState extends State<dumbellrow> {
  @override
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(list:yapilisHareketler.dumbellrowlst ,
      kilitipucu: kilitipucu.dumbellrowipucu,images:'assets/actionImages/sirtHareketleri/dumbellrow.jpg',
      videos:'assets/actionVideo/Sirthareket/dumbelRow.mp4',
    text: 'Dumbell Row',
    );
  }
}
