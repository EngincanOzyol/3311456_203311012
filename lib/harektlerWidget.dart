









import 'package:flutter2/sirtHareket.dart';
import 'package:flutter2/vucutBolumleri.dart';
import 'package:flutter_localizations/flutter_localizations.dart';





import 'package:flutter/material.dart';

import 'package:flutter2/style.dart';
class hareketler extends StatefulWidget {

  String? hareketIsmi;
  String? imageIsmi;
  String? route;







  hareketler({required this.hareketIsmi, required this.imageIsmi,this.route});
  @override
  State<hareketler> createState() => _hareketlerState();


}
class _hareketlerState extends State<hareketler> {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.white30,
            padding: EdgeInsets.symmetric(horizontal: 0.0)),
        onPressed: (){
          Navigator.pushNamed(context, widget.route!);
        },
        child: Row(


          children: [
            Image(
              fit: BoxFit.cover,

              image: AssetImage(widget.imageIsmi!),
              width: 50.0,
              height: 50.0,
            ),
            SizedBox(width: 8.0,),
            Text(widget.hareketIsmi!,style: buyukStil,),
          ],
        ),
      ),
    );
  }


}