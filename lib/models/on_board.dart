import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter2/view/entryScreens/profil.dart';
import 'package:flutter2/view/entryScreens/bodyParts.dart';
import 'package:flutter/material.dart';

import '../widget/mainPageWidget.dart';

class onBoardwidget extends StatefulWidget {
  const onBoardwidget({Key? key}) : super(key: key);

  @override
  State<onBoardwidget> createState() => _onBoardwidgetState();
}

class _onBoardwidgetState extends State<onBoardwidget> {
  bool? _islogged;
  @override
  void initState() {
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        print('sign out');
        print(user?.uid);
        _islogged=false;
      }
      else{
        print('sign in');
        _islogged=true;
      }
      setState(() {

      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return _islogged==null? Center(child: CircularProgressIndicator(),) :
    _islogged! ? anasayfa():profil();
  }
}
