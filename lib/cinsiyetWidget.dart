

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/cinsiyet.dart';
import 'package:flutter2/style.dart';

class CinsiyetContainer extends StatelessWidget {
  IconData? iconCinsiyet;
  String? cinsiyetler;

  Color renk;



  CinsiyetContainer(
      {required this.cinsiyetler,
      required this.iconCinsiyet,
        required this.renk,

     });

  @override
  Widget build(BuildContext context) {
    return Wrap(

        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70.0),
                color: renk),
            child: Icon(
              iconCinsiyet,
              size: 100.0,
            ),

          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            cinsiyetler!,
            style: cinsiyetStil,
          ),
        ],

    );
  }
}
