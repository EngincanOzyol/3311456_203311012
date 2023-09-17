import 'package:flutter/material.dart';
import 'package:flutter2/models/doingActionsList.dart';
import 'package:flutter2/view/doingActionsScreen/yapilis.dart';
class flyMachine extends StatefulWidget {
  const flyMachine({Key? key}) : super(key: key);

  @override
  State<flyMachine> createState() => _flyMachineState();
}

class _flyMachineState extends State<flyMachine> {
  ipucu kilitipucu=ipucu();
  yapilis1 yapilisHareketler=yapilis1();
  @override
  Widget build(BuildContext context) {
    return yapilisHareket(
      list:yapilisHareketler.flylst ,
      kilitipucu: kilitipucu.flyipucu,
      images: 'assets/actionImages/gogushareketleri/fly.jpeg',
      videos: 'assets/actionVideo/gogusHareket/MachineFly.mp4',
      text: 'Fly Machine',

    );
  }

}
