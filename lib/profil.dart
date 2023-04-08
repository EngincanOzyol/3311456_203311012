
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter2/cinsiyet.dart';
import 'package:flutter2/style.dart';

class profil extends StatefulWidget {
  const profil({Key? key}) : super(key: key);

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {


  TextEditingController isim=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: new BorderRadius.circular(50.0),
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage('images/fitness.jpeg'),
                width: 50.0,
                height: 50.0,
              ),
            ),
            SizedBox(height: 20.0,),

            Text('ADINIZ NE?',style: buyukStil,),
            SizedBox(height: 20.0,),


            Text('Merhaba! ben kişisel koçunuz engincan.\n Size nasıl hitap edelim?',style: kucukStil,),
            SizedBox(height: 100.0,),
            Container(
              margin: EdgeInsets.only(right: 150.0,left: 150.0),
              child: TextField(
              controller:isim,

                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Adınızı girin',

                  hintStyle: TextStyle(color: Colors.white,),
                ),
              ),
            ),
            SizedBox(height: 60.0,),
            TextButton(

              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                fixedSize:Size(150.0, 50.0),
              ),


              child: Text('SONRAKİ',style: buyukStil,),
              onPressed: (){
                if(isim.text.isEmpty==true ){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("UYARI!!"),
                        content: new Text("lütfen isminizi girin!"),
                        actions: <Widget>[
                          new TextButton(
                            child: new Text("Tamam"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },

                          ),
                        ],
                      );
                    },
                  );
                }
                else{
                  Navigator.pushNamed(context, '/cinsiyet');
                }



              },

            )






          ],
        ),
      ),
    );
  }
}
