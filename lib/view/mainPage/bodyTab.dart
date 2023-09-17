

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/models/services/anasayfaServices.dart';
import 'package:flutter2/style.dart';
import 'package:flutter2/view/entryScreens/dateTime.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';



class vucuttab extends StatefulWidget {
   vucuttab({Key? key}) : super(key: key);

  @override
  State<vucuttab> createState() => _vucuttabState();
}

class _vucuttabState extends State<vucuttab>  {

TextEditingController yukseklikControl=TextEditingController();
TextEditingController kiloControl=TextEditingController();
TextEditingController yagOran=TextEditingController();
TextEditingController boyun=TextEditingController();
TextEditingController gogus=TextEditingController();
TextEditingController bel=TextEditingController();
TextEditingController kalca=TextEditingController();
TextEditingController solPazi=TextEditingController();
TextEditingController sagPazi=TextEditingController();
TextEditingController solUyluk=TextEditingController();
TextEditingController sagUyluk=TextEditingController();
TextEditingController sagKalf=TextEditingController();
TextEditingController solKalf=TextEditingController();
DateTime dateTime=DateTime(2005,11,15);
refernceDokumen ref=refernceDokumen();
@override
  Widget build(BuildContext context) {
    return 
     Scaffold(
       appBar: AppBar(
         automaticallyImplyLeading: false,
         title: Text('Vücut'),
         backgroundColor: Colors.deepPurple,
       ),
       body: ListView(
         children: [
           Text('Genel bilgiler',style: buyukStil2,),

           Expanded(child: buildBoyButton(context)),

           buildKiloButton(context),
           buildYagOranButton(context),
           SizedBox(height: 15.0,),
           buildBoyunButton(context),
           buildGogusButton(context),
           buildBelButton(context),
           buildKalcaButton(context),
           Text('Pazılar',style: buyukStil2,),
           buildSolPaziButton(context),
           buildSagPaziButton(context),
           Text('Uyluk',style: buyukStil2,),
           buildSolUylukButton(context),
           buildSagUylukButton(context),
           Text('Kalf',style: buyukStil2,),
           buildSagKalfButton(context),
           buildSolKalfButton(context),

         ],
       ),
     );
  }
TextButton buildSolKalfButton(BuildContext context) {
  return TextButton(
           onPressed: () {
             showDialog(
               context: context,
               builder: (BuildContext context) {
                 return AlertDialog(
                   title: Text("Lütfen Sol kalfınızın uzunluğunu giriniz?",style: kucukStil,),
                   content: TextField(
                     controller: sagKalf,
                     decoration: InputDecoration(hintText: 'cm',suffixStyle: kucukStil),
                   ),
                   actions: <Widget>[
                     TextButton(
                       child: Text("Tamam",style: kucukStil,),
                       onPressed: () {
                         ref.refsolKalf.set({'solKalfUzunluk':solKalf.text});
                         Navigator.of(context).pop();
                       },
                     ),
                   ],
                 );
               },
             );
           },
           child: StreamBuilder(
               stream: ref.refsolKalf.snapshots(),
               builder: (context, asyncsnapshot) {
                 if(!asyncsnapshot.hasData){
                   return Center(child: CircularProgressIndicator(),);
                 }
                 else{
                   var documentSnapshot=  asyncsnapshot.data;
                   Map<String,dynamic> docs= documentSnapshot?.data() as Map<String,dynamic>;
                   return  Card(
                     color: Colors.deepPurple,
                     child: ListTile(
                       leading: Icon(Icons.oil_barrel_sharp),
                       title: Text('Sol',style: profilStil,),
                       trailing: Text('${docs!['solKalfUzunluk']}  cm',style: kucukStil,),
                     ),
                   );
                 }
               }
           ),
         );
}

TextButton buildSagKalfButton(BuildContext context) {
  return TextButton(
           onPressed: () {
             showDialog(
               context: context,
               builder: (BuildContext context) {
                 return AlertDialog(
                   title:  Text("Lütfen Sağ kalfınızın uzunluğunu giriniz?",style: kucukStil,),
                   content: TextField(
                     controller: sagKalf,
                     decoration: InputDecoration(hintText: 'cm',suffixStyle: kucukStil),
                   ),
                   actions: <Widget>[
                     TextButton(
                       child: new Text("Tamam"),
                       onPressed: () {
                         ref.refsagKalf.set({'sagKalfUzunluk':sagKalf.text});
                         Navigator.of(context).pop();
                       },
                     ),
                   ],
                 );
               },
             );
           },
           child: StreamBuilder(
               stream: ref.refsagKalf.snapshots(),
               builder: (context, asyncsnapshot) {
                 if(!asyncsnapshot.hasData){
                   return Center(child: CircularProgressIndicator(),);
                 }
                 else{
                   var documentSnapshot=  asyncsnapshot.data;
                   Map<String,dynamic> docs= documentSnapshot?.data() as Map<String,dynamic>;
                   return  Card(
                     color: Colors.deepPurple,
                     child: ListTile(
                       leading: Icon(Icons.oil_barrel_sharp),
                       title:  Text('Sağ',style: profilStil,),
                       trailing: Text('${docs!['sagKalfUzunluk']}  cm',style: kucukStil,),
                     ),
                   );
                 }
               }
           ),
         );
}

TextButton buildSagUylukButton(BuildContext context) {
  return TextButton(
           onPressed: () {
             showDialog(
               context: context,
               builder: (BuildContext context) {
                 return AlertDialog(
                   title: new Text("Lütfen Sağ Uyluğunuzun uzunluğunu giriniz?"),
                   content: TextField(
                     controller: sagUyluk,
                     decoration: InputDecoration(hintText: 'cm'),
                   ),
                   actions: <Widget>[
                     TextButton(
                       child: new Text("Tamam"),
                       onPressed: () {
                         ref.refsagUyluk.set({'sagUylukUzunluk':sagUyluk.text});
                         Navigator.of(context).pop();
                       },
                     ),
                   ],
                 );
               },
             );
           },
           child: StreamBuilder(
               stream: ref.refsagUyluk.snapshots(),
               builder: (context, asyncsnapshot) {
                 if(!asyncsnapshot.hasData){
                   return Center(child: CircularProgressIndicator(),);
                 }
                 else{
                   var documentSnapshot=  asyncsnapshot.data;
                   Map<String,dynamic> docs= documentSnapshot?.data() as Map<String,dynamic>;
                   return  Card(
                     color: Colors.deepPurple,
                     child: ListTile(
                       leading: Icon(Icons.oil_barrel_sharp),
                       title:  Text('Sağ',style: profilStil,),
                       trailing: Text('${docs['sagUylukUzunluk']}  cm',style: kucukStil,),
                     ),
                   );
                 }
               }
           ),
         );
}

TextButton buildSolUylukButton(BuildContext context) {
  return TextButton(
           onPressed: () {
             showDialog(
               context: context,
               builder: (BuildContext context) {
                 return AlertDialog(
                   title:  Text("Lütfen Sol Uyluğunuzun uzunluğunu giriniz?",style: kucukStil,),
                   content: TextField(
                     controller: solUyluk,
                     decoration: InputDecoration(hintText: 'cm',suffixStyle: kucukStil),
                   ),
                   actions: <Widget>[
                     TextButton(
                       child: new Text("Tamam"),
                       onPressed: () {
                         ref.refsolUyluk.set({'solUylukUzunluk':solUyluk.text});
                         Navigator.of(context).pop();
                       },
                     ),
                   ],
                 );
               },
             );
           },
           child: StreamBuilder(
               stream: ref.refsolUyluk.snapshots(),
               builder: (context, asyncsnapshot) {
                 if(!asyncsnapshot.hasData){
                   return Center(child: CircularProgressIndicator(),);
                 }
                 else{
                   var documentSnapshot=  asyncsnapshot.data;
                   Map<String,dynamic> docs= documentSnapshot?.data() as Map<String,dynamic>;
                   return  Card(
                     color: Colors.deepPurple,
                     child: ListTile(
                       leading: Icon(Icons.oil_barrel_sharp),
                       title:  Text('Sol',style: profilStil,),
                       trailing: Text('${docs['solUylukUzunluk']}  cm',style: kucukStil,),
                     ),
                   );
                 }
               }
           ),
         );
}

TextButton buildSagPaziButton(BuildContext context) {
  return TextButton(
           onPressed: () {
             showDialog(
               context: context,
               builder: (BuildContext context) {
                 return AlertDialog(
                   title: new Text("Lütfen kalçanızın uzunluğunu giriniz?"),
                   content: TextField(
                     controller: sagPazi,
                     decoration: InputDecoration(hintText: 'cm'),
                   ),
                   actions: <Widget>[
                     TextButton(
                       child: new Text("Tamam"),
                       onPressed: () {
                         ref.refsagPazi.set({'sagPaziUzunluk':sagPazi.text});
                         Navigator.of(context).pop();
                       },
                     ),
                   ],
                 );
               },
             );
           },
           child: StreamBuilder(
               stream: ref.refsagPazi.snapshots(),
               builder: (context, asyncsnapshot) {
                 if(!asyncsnapshot.hasData){
                   return Center(child: CircularProgressIndicator(),);
                 }
                 else{
                   var documentSnapshot=  asyncsnapshot.data;
                   Map<String,dynamic> docs= documentSnapshot?.data() as Map<String,dynamic>;
                   return  Card(
                     color: Colors.deepPurple,
                     child: ListTile(
                       leading: Icon(Icons.oil_barrel_sharp),
                       title:  Text('Sag',style: profilStil,),
                       trailing: Text('${docs['sagPaziUzunluk']}  cm',style: kucukStil,),
                     ),
                   );
                 }
               }
           ),
         );
}

TextButton buildSolPaziButton(BuildContext context) {
  return TextButton(
           onPressed: () {
             showDialog(
               context: context,
               builder: (BuildContext context) {
                 return AlertDialog(
                   title: new Text("Lütfen kalçanızın uzunluğunu giriniz?",style: kucukStil,),
                   content: TextField(
                     controller: solPazi,
                     decoration: InputDecoration(hintText: 'cm',suffixStyle: kucukStil),
                   ),
                   actions: <Widget>[
                     TextButton(
                       child: Text("Tamam",style: kucukStil,),
                       onPressed: () {
                         ref.refsolPazi.set({'solPaziUzunluk':solPazi.text});
                         Navigator.of(context).pop();
                       },
                     ),
                   ],
                 );
               },
             );
           },
           child: StreamBuilder(
               stream: ref.refsolPazi.snapshots(),
               builder: (context, asyncsnapshot) {
                 if(!asyncsnapshot.hasData){
                   return Center(child: CircularProgressIndicator(),);
                 }
                 else{
                   var documentSnapshot=  asyncsnapshot.data;
                   Map<String,dynamic> docs= documentSnapshot?.data() as Map<String,dynamic>;
                   return  Card(
                     color: Colors.deepPurple,
                     child: ListTile(
                       leading: Icon(Icons.oil_barrel_sharp),
                       title:  Text('Sol',style: profilStil,),
                       trailing: Text('${docs['solPaziUzunluk']}  cm',style: kucukStil,),
                     ),
                   );
                 }
               }
           ),
         );
}

TextButton buildKalcaButton(BuildContext context) {
  return TextButton(
           onPressed: () {
             showDialog(
               context: context,
               builder: (BuildContext context) {
                 return AlertDialog(
                   title:  Text("Lütfen kalçanızın uzunluğunu giriniz?",style: kucukStil,),
                   content: TextField(
                     controller: kalca,
                     decoration: InputDecoration(hintText: 'cm',suffixStyle: kucukStil),
                   ),
                   actions: <Widget>[
                     TextButton(
                       child: Text("Tamam"),
                       onPressed: () {
                         ref.refkalca.set({'kalcaUzunluk':kalca.text});
                         Navigator.of(context).pop();
                       },
                     ),
                   ],
                 );
               },
             );
           },
           child: StreamBuilder(
               stream: ref.refkalca.snapshots(),
               builder: (context, asyncsnapshot) {
                 if(!asyncsnapshot.hasData){
                   return Center(child: CircularProgressIndicator(),);
                 }
                 else{
                   var documentSnapshot=  asyncsnapshot.data;
                   Map<String,dynamic> docs= documentSnapshot?.data() as Map<String,dynamic>;
                   return  Card(
                     color: Colors.deepPurple,
                     child: ListTile(
                       leading: Icon(Icons.oil_barrel_sharp),
                       title:  Text('kalça',style: profilStil,),
                       trailing: Text('${docs!['kalcaUzunluk']}  cm',style: kucukStil,),
                     ),
                   );
                 }
               }
           ),
         );
}

TextButton buildBelButton(BuildContext context) {
  return TextButton(
           onPressed: () {
             showDialog(
               context: context,
               builder: (BuildContext context) {
                 return AlertDialog(
                   title:  Text("Lütfen belinizin uzunluğunu giriniz?",style: kucukStil,),
                   content: TextField(
                     controller: bel,
                     decoration: InputDecoration(hintText: 'cm',suffixStyle: kucukStil),
                   ),
                   actions: <Widget>[
                     TextButton(
                       child: Text("Tamam",style: kucukStil,),
                       onPressed: () {
                         ref.refbel.set({'belUzunluk':bel.text});
                         Navigator.of(context).pop();
                       },
                     ),
                   ],
                 );
               },
             );
           },
           child: StreamBuilder(
               stream: ref.refbel.snapshots(),
               builder: (context, asyncsnapshot) {
                 if(!asyncsnapshot.hasData){
                   return Center(child: CircularProgressIndicator(),);
                 }
                 else{
                   var documentSnapshot=  asyncsnapshot.data;
                   Map<String,dynamic> docs= documentSnapshot?.data() as Map<String,dynamic>;
                   return  Card(
                     color: Colors.deepPurple,
                     child: ListTile(
                       leading: Icon(Icons.oil_barrel_sharp),
                       title:  Text('bel',style: profilStil,),
                       trailing: Text('${docs!['belUzunluk']}  cm',style: kucukStil,),
                     ),
                   );
                 }
               }
           ),
         );
}

TextButton buildGogusButton(BuildContext context) {
  return TextButton(
           onPressed: () {
             showDialog(
               context: context,
               builder: (BuildContext context) {
                 return AlertDialog(
                   title: new Text("Lütfen boyunun uzunluğunu giriniz?",style: kucukStil,),
                   content: TextField(
                     controller: gogus,
                     decoration: InputDecoration(hintText: 'cm',suffixStyle: kucukStil),
                   ),
                   actions: <Widget>[
                     TextButton(
                       child: new Text("Tamam",style: kucukStil,),
                       onPressed: () {
                         ref.refgogus.set({'gogusUzunluk':gogus.text});
                         Navigator.of(context).pop();
                       },
                     ),
                   ],
                 );
               },
             );
           },
           child: StreamBuilder(
               stream: ref.refgogus.snapshots(),
               builder: (context, asyncsnapshot) {
                 if(!asyncsnapshot.hasData){
                   return Center(child: CircularProgressIndicator(),);
                 }
                 else{
                   var documentSnapshot=  asyncsnapshot.data;
                   Map<String,dynamic> docs= documentSnapshot?.data() as Map<String,dynamic>;
                   return  Card(
                     color: Colors.deepPurple,
                     child: ListTile(
                       leading: Icon(Icons.oil_barrel_sharp),
                       title: Text('chest',style: profilStil,),
                       trailing: Text('${docs!['gogusUzunluk']}  cm',style: kucukStil,),
                     ),
                   );
                 }
               }
           ),
         );
}

TextButton buildBoyunButton(BuildContext context) {
  return TextButton(
           onPressed: () {
             showDialog(
               context: context,
               builder: (BuildContext context) {
                 return AlertDialog(
                   title:  Text("Lütfen boyunun uzunluğunu giriniz?",style: kucukStil,),
                   content: TextField(
                     controller: boyun,
                     decoration: InputDecoration(hintText: 'cm',suffixStyle: kucukStil),
                   ),
                   actions: <Widget>[
                     TextButton(
                       child: Text("Tamam",style: kucukStil,),
                       onPressed: () {
                         ref.refboyun.set({'boyunUzunluk':boyun.text});
                         Navigator.of(context).pop();
                         },
                     ),
                   ],
                 );
                 },
             );
             },
           child: StreamBuilder(
               stream: ref.refboyun.snapshots(),
               builder: (context, asyncsnapshot) {
                 if(!asyncsnapshot.hasData){
                   return Center(child: CircularProgressIndicator(),);
                 }
                 else{
                   var documentSnapshot=  asyncsnapshot.data;
                   Map<String,dynamic> docs= documentSnapshot?.data() as Map<String,dynamic>;
                   return  Card(
                     color: Colors.deepPurple,
                     elevation: 1.0,
                     margin: EdgeInsets.all(0.0),
                     child: ListTile(
                       leading: Icon(Icons.oil_barrel_sharp),
                       title:  Text('Boyun',style: profilStil,),
                       trailing: Text('${docs!['boyunUzunluk']}  cm',style: kucukStil,),
                     ),
                   );
                 }
               }
               ),
         );
}

  TextButton buildYagOranButton(BuildContext context) {
  return TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title:  Text("Lütfen vücut yağ oranını giriniz?",style: kucukStil,),
                                    content: TextField(
                                      controller: yagOran,
                                      decoration: InputDecoration(hintText: '%',suffixStyle: kucukStil),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        child: Text("Tamam",style: kucukStil,),
                                        onPressed: () {
                                          ref.refVucutYag.set({'YagOran':yagOran.text});
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: StreamBuilder(
                                stream: ref.refVucutYag.snapshots(),
                                builder: (context, asyncsnapshot) {
                                  if(!asyncsnapshot.hasData){
                                    return Center(child: CircularProgressIndicator(),);
                                  }
                                  else{
                                    var documentSnapshot=  asyncsnapshot.data;
                                    Map<String,dynamic> docs= documentSnapshot?.data() as Map<String,dynamic>;
                                    return  Card(
                                      color: Colors.deepPurple,
                                      child: ListTile(
                                        leading: Icon(Icons.oil_barrel_sharp),
                                        title: Text('Vücut yağ',style:profilStil,),
                                        trailing: Text('${docs!['YagOran']}  %',style: kucukStil,),
                                      ),
                                    );
                                  }
                                }
                            ),
                          );
}
  TextButton buildDogumTarihButton(BuildContext context) {
  return TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(


                                    title:  Text("Lütfen Doğum tarihiniz giriniz?",style: kucukStil,),
                                    content: TextButton(
                                      child: Icon(Icons.calendar_month,size: 40.0,color: Colors.red,),
                                      onPressed: () async {
                                        DateTime? newDate =await showDatePicker(
                                          context: context,
                                          locale: Locale('tr','TR'),
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime(2021),
                                          initialDate: dateTime,
                                        );
                                        ref.refTarih.set({'tarih':'${dateTime.year}/${dateTime.month}/${dateTime.day}'});
                                        if(newDate==null) return;
                                        setState(()=>dateTime=newDate);

                                      },
                                    ),

                                    actions: <Widget>[
                                      Center(child: Text('${dateTime.year}/${dateTime.month}/${dateTime.day}')),
                                      TextButton(
                                        child:  Text("Tamam",style: kucukStil,),
                                        onPressed: () {
                                          ref.refTarih.set({'tarih':'${dateTime.year}/${dateTime.month}/${dateTime.day}'});
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: StreamBuilder(
                                stream: ref.refTarih.snapshots(),
                                builder: (context, asyncsnapshot) {
                                  if(!asyncsnapshot.hasData){
                                    return Center(child: CircularProgressIndicator(),);
                                  }
                                  else{
                                    var documentSnapshot=  asyncsnapshot.data;
                                    Map<String,dynamic> docs= documentSnapshot?.data() as Map<String,dynamic>;
                                    return   Card(
                                      color: Colors.deepPurple,
                                      child: ListTile(
                                        leading: Icon(Icons.monitor_weight_outlined),
                                        title:  Text('dogum tarihi',style: profilStil,),
                                        trailing: Text('${docs!['tarih']} ',style: kucukStil,),
                                      ),
                                    );
                                  }
                                }
                            ),
                          );
}
  TextButton buildKiloButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title:  Text("Lütfen kilonuzu giriniz?",style: kucukStil,),
              content: TextField(
                controller: kiloControl,
                decoration: InputDecoration(hintText: 'kg',suffixStyle: kucukStil),
              ),
              actions: <Widget>[
                TextButton(
                  child: Text("Tamam",style: kucukStil,),
                  onPressed: () {
                   ref.refkilo.set({'kilo':kiloControl.text});
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
      child: StreamBuilder(
          stream: ref.refkilo.snapshots(),
          builder: (context, asyncsnapshot) {
            if(!asyncsnapshot.hasData){
              return Center(child: CircularProgressIndicator(),);
            }
            else{
              var documentSnapshot=  asyncsnapshot.data;
              Map<String,dynamic> docs= documentSnapshot?.data() as Map<String,dynamic>;
              return  Card(
                color: Colors.deepPurple,
                child: ListTile(

                    leading: Icon(Icons.monitor_weight_outlined),
                    title:  Text('Ağırlık',style: profilStil,),
                    trailing: Text('${docs!['kilo']}  kg',style: kucukStil,),



                  ),
              );


            }
          }
      ),
    );
  }
  TextButton buildBoyButton(BuildContext context) {
    return TextButton(
            onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title:  Text("Lütfen boyunuzu giriniz?",style: kucukStil,),
                      content: TextField(
                        controller: yukseklikControl,
                        decoration: InputDecoration(hintText: 'cm',suffixStyle: kucukStil),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text("Tamam",style: kucukStil,),
                          onPressed: () async{
                          ref.refBoykilo.set({'boy':yukseklikControl.text});

                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
            },
            child: StreamBuilder(
              stream:ref.refBoykilo.snapshots(),
              builder: (context, asyncsnapshot) {
                if(!asyncsnapshot.hasData){
                  return Center(child: CircularProgressIndicator(),);
                }
                else{
               var documentSnapshot=  asyncsnapshot.data;
               Map<String,dynamic> docs= documentSnapshot?.data() as Map<String,dynamic>;

                  return   Card(
                    color: Colors.deepPurple,
                    child: ListTile(
                      leading: Icon(Icons.rule_sharp),
                      title: Text('yükseklik',style: profilStil,),
                      trailing: Text('${docs!['boy']}  cm',style: kucukStil,),

                    ),
                  );
                }

              }
            ),
          );
  }
}
