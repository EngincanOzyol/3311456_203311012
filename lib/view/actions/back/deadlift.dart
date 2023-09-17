
import 'package:flutter/material.dart';

import '../../../models/doingActionsList.dart';
import '../../doingActionsScreen/yapilis.dart';






class deadlift extends StatefulWidget {
  const deadlift({Key? key}) : super(key: key);

  @override
  State<deadlift> createState() => _deadliftState();
}

class _deadliftState extends State<deadlift> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  Widget build(BuildContext context) {
    return yapilisHareket(list:yapilisHareketler.deadliftlst ,
        kilitipucu: kilitipucu.deadliftipucu,
        images:'assets/actionImages/sirtHareketleri/deadlift.jpg',
        videos:'assets/actionVideo/Sirthareket/deadlift.mp4',
    text: 'Deadlift',
    );
  }
}
