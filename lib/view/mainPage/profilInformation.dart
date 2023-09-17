import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/models/services/anasayfaServices.dart';

class profilBilgi extends StatefulWidget {
  const profilBilgi({Key? key}) : super(key: key);

  @override
  State<profilBilgi> createState() => _profilBilgiState();
}

class _profilBilgiState extends State<profilBilgi> {
  TextEditingController isim = TextEditingController();
  refernceDokumen ref = refernceDokumen();
  var value = 0;
  DateTime dateTime=DateTime(2005,11,15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: ListView(
        children: [
          Card(
            child: TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: new Text("Lütfen isminizi giriniz?"),
                      content: TextField(
                        controller: isim,
                        decoration: InputDecoration(hintText: 'isim'),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: new Text("Tamam"),
                          onPressed: () {
                            ref.refisim.set({'isim': isim.text});
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: StreamBuilder(
                  stream: ref.refisim.snapshots(),
                  builder: (context, asyncsnapshot) {
                    if (!asyncsnapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      var documentSnapshot = asyncsnapshot.data;
                      Map<String, dynamic> docs = documentSnapshot?.data() as Map<String, dynamic>;
                      return ListTile(
                        leading: Icon(Icons.person,color: Colors.lightBlue,),
                        title: const Text('İsim'),
                        trailing: Text('${docs['isim']}'),
                      );
                    }
                  }),
            ),
          ),
          Card(
            child: StreamBuilder(
                stream: ref.refCinsiyet.snapshots(),
                builder: (context, asyncsnapshot) {
                  if (!asyncsnapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    var documentSnapshot = asyncsnapshot.data;
                    Map<String, dynamic> docs = documentSnapshot?.data() as Map<String, dynamic>;
                    return ListTile(
                      leading: Image.asset('assets/icons/gender.png',height: 25.0,width: 25.0,color: Colors.lightBlue),
                      title: Text(docs['cinsiyet']),
                      trailing: ElevatedButton(
                        onPressed: () {
                          showAdaptiveActionSheet(
                            bottomSheetColor: Colors.indigoAccent,
                            context: context,
                            actions: <BottomSheetAction>[
                              BottomSheetAction(
                                title: Text('Erkek'),
                                onPressed: (_) {
                                  ref.refCinsiyet.set({'cinsiyet': 'erkek'});

                                  Navigator.pop(context);
                                },
                              ),
                              BottomSheetAction(
                                title: const Text('Kadın'),
                                onPressed: (_) {
                                  ref.refCinsiyet.set({'cinsiyet': 'Kadın'});
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                            cancelAction:
                                CancelAction(title: const Text('Vazgeç')),
                          );
                        },
                        child: const Text('Seçim'),
                      ),
                      subtitle: Text('Cinsiyet'),
                    );
                  }
                }),
          ),
          Card(
            child: TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: new Text("Lütfen Doğum tarihiniz giriniz?"),
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
                          ref.refTarih.set({'dogumTarihi':'${dateTime.year}/${dateTime.month}/${dateTime.day}'});
                          if(newDate==null) return;
                          setState(()=>dateTime=newDate);
                        },
                      ),

                      actions: <Widget>[
                        Center(child: StreamBuilder(
                          stream: ref.refTarih.snapshots(),
                          builder: (context,asyncsnapshot){
                            if(!asyncsnapshot.hasData){
                              return Center(child: CircularProgressIndicator(),);
                            }
                            else{
                              var documentSnapshot=  asyncsnapshot.data;
                              Map<String,dynamic> docs= documentSnapshot?.data() as Map<String,dynamic>;
                              ref.refTarih.set({'dogumTarihi':'${dateTime.year}/${dateTime.month}/${dateTime.day}'});
                              return
                                Text('${docs['dogumTarihi']} ');
                            }
                          },

                        ),),
                        TextButton(
                          child: new Text("Tamam"),
                          onPressed: () {
                            ref.refTarih.set({'dogumTarihi':'${dateTime.year}/${dateTime.month}/${dateTime.day}'});
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
                      return   ListTile(
                        leading: Image.asset('assets/icons/calendar.png',height: 25.0,width: 25.0,color: Colors.lightBlue,),
                        title: const Text('Dogum Tarihi'),
                        trailing: Text('${docs['dogumTarihi']} '),
                      );
                    }
                  }
              ),
            ),
          )
        ],
      ),
    );
  }
}
