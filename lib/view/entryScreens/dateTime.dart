

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/models/services/anasayfaServices.dart';
import 'package:flutter2/style.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class dateTimem extends StatefulWidget {
  @override
  State<dateTimem> createState() => _dateTimemState();
}
class _dateTimemState extends State<dateTimem> {
  refernceDokumen ref=refernceDokumen();
     DateTime dateTime=DateTime(2005,11,15);
  @override
  Widget build(BuildContext context) {
    return
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('DOGUM TARİHİNİZ:',style: kucukStil,),
              SizedBox(width: 10.0,),
              Text('${dateTime.year}/${dateTime.month}/${dateTime.day}',style: buyukStil,),
              SizedBox(width: 10.0,),
              DATEbutton(context),
            ],
          ),
        );
  }
  TextButton DATEbutton(BuildContext context) {
    return TextButton(
              child: Icon(Icons.calendar_month,size: 55.0,color: Colors.red,),
              onPressed: () async {
               DateTime? newDate =await showDatePicker(
                 context: context,
                locale: Locale('tr','TR'),
                firstDate: DateTime(1900),
                lastDate: DateTime(2021),
                  initialDate: dateTime,
                );
               if(newDate==null) return;
               setState(()=>dateTime=newDate);
               ref.refTarih.set({'dogumTarihi':'${dateTime.year}/${dateTime.month}/${dateTime.day}'});
              },
            );
  }
}
