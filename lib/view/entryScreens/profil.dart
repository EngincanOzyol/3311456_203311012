
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter2/models/services/authServices.dart';
import 'package:flutter2/view/entryScreens/gender.dart';
import 'package:flutter2/style.dart';
import 'package:provider/provider.dart';

class profil extends StatefulWidget {
  const profil({Key? key}) : super(key: key);

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {


  TextEditingController isim=TextEditingController();
  final Future<FirebaseApp> _initial=Firebase.initializeApp();
  FirebaseFirestore firestore=FirebaseFirestore.instance;

  CollectionReference profilRef=FirebaseFirestore.instance.collection('profil');



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20.0,),
               ClipRRect(
                  borderRadius: new BorderRadius.circular(50.0),
                  child: const Image(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/entryImages/fitness.jpeg'),
                    width: 70.0,
                    height: 70.0,
                  ),
                ),
              const SizedBox(height: 20.0,),
              Text('ADINIZ NE?',style: buyukStil,),
              const SizedBox(height: 20.0,),
              Text('Merhaba! ben kişisel koçunuz engincan.\n Size nasıl hitap edelim?',style: kucukStil,),
              const SizedBox(height: 100.0,),
              Container(
                margin: EdgeInsets.only(right: 150.0,left: 150.0),
                child: TextField(
                controller:isim,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'Adınızı girin',
                    hintStyle: TextStyle(color: Colors.white,),
                  ),
                ),
              ),
              const SizedBox(height: 60.0,),
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
                          title: const Text("UYARI!!"),
                          content: const Text("lütfen isminizi girin!"),
                          actions: <Widget>[
                            TextButton(
                              child: const Text("Tamam"),
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
                    profilRef.doc('isim').set({'isim':isim.text});

                    Navigator.pushNamed(context, '/cinsiyet');

                  }



                },

              )






            ],
          ),
        ),
      ),
    );
  }
}
