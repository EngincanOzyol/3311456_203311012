

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter2/boyKiloDogumtarihi.dart';
import 'package:flutter2/style.dart';

import 'cinsiyetWidget.dart';

class cinsiyet extends StatefulWidget {
  const cinsiyet({Key? key}) : super(key: key);

  @override
  State<cinsiyet> createState() => _cinsiyetState();
}

class _cinsiyetState extends State<cinsiyet> {
  String? secilenCinsiyet;
  bool buton=false;




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 70.0,),
                Expanded(
                  child: Column(children: [Text(
                    'CİNSİYETİNİZ NEDİR?',
                    style: buyukStil,
                  ),
                    SizedBox(height: 10.0,),
                    Text(
                      'Koçunuz birkaç soruya dayalı olarak\n antrenman programınızı kişileştirir.',
                      style: kucukStil,
                    ),],),
                ),
                
                
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            secilenCinsiyet='Kadın';
                          });
                        },
                        child: CinsiyetContainer(
                            iconCinsiyet: Icons.female, cinsiyetler: 'Kadın',renk: secilenCinsiyet=='Kadın'?Colors.white:Colors.black38,

                        ),
                      ),
                      GestureDetector(

                        onTap: (){
                          setState(() {
                            secilenCinsiyet='Erkek';
                          });
                        },
                        child: CinsiyetContainer(
                            iconCinsiyet: Icons.male, cinsiyetler: 'Erkek',renk: secilenCinsiyet=='Erkek'?Colors.white:Colors.black38,

                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.0,),
                

                   TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        fixedSize: Size(150.0, 50.0),
                      ),
                      child: Text(
                        'SONRAKİ',
                        style: buyukStil,
                      ),
                      onPressed:(){
                        setState(() {
                          Navigator.pushNamed(context, '/boykilo');

                        });
                      },





                      ),
                SizedBox(height: 150.0,),

              ],
            ),
          )),
    );
  }
}
