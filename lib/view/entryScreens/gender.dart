

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter2/models/services/anasayfaServices.dart';
import 'package:flutter2/view/entryScreens/heightWeightDatebirth.dart';
import 'package:flutter2/style.dart';
import 'package:provider/provider.dart';

import '../../models/services/themeSettings.dart';
import '../../widget/genderWidget.dart';

class cinsiyet extends StatefulWidget {
  const cinsiyet({Key? key}) : super(key: key);
  @override
  State<cinsiyet> createState() => _cinsiyetState();
}
class _cinsiyetState extends State<cinsiyet> {
  String? secilenCinsiyet;
  bool buton=false;
  refernceDokumen ref=refernceDokumen();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeModel>(context,listen: true).currentTheme,
      home: Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 70.0,),
                Expanded(
                  child: Column(children: [
                    Text(
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
                            ref.refCinsiyet.set({
                              'cinsiyet':'kadın'
                            });
                          });
                        },
                        child: CinsiyetContainer(
                            iconCinsiyet: Icons.female, cinsiyetler: 'Kadın',renk: secilenCinsiyet=='Kadın'?Colors.cyan:Colors.black38,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            secilenCinsiyet='Erkek';
                            ref.refCinsiyet.set({'cinsiyet':'erkek'});
                          });
                        },
                        child: CinsiyetContainer(
                            iconCinsiyet: Icons.male,cinsiyetler: 'Erkek',renk: secilenCinsiyet=='Erkek'?Colors.cyan:Colors.black38,
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
