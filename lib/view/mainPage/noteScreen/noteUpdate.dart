import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'NotScreen.dart';
class notGuncelleme extends StatefulWidget {
 final DocumentSnapshot docsGuncelleme;
  notGuncelleme({super.key, required this.docsGuncelleme});

  @override
  State<notGuncelleme> createState() => _notGuncellemeState();
}

class _notGuncellemeState extends State<notGuncelleme> {
  @override


  TextEditingController baslik=TextEditingController();
  TextEditingController aciklama=TextEditingController();

  CollectionReference ref=FirebaseFirestore.instance.collection('notes');

  @override
  void initState() {
 Map<String,dynamic> b=widget.docsGuncelleme.data() as Map<String,dynamic>;
    baslik=TextEditingController(text:b?['title']);
    aciklama=TextEditingController(text: b?['aciklma']);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            widget.docsGuncelleme.reference.update({'title':baslik.text,'aciklma':aciklama.text}).
            whenComplete(() => Navigator.pop(context));

          },icon: Icon(Icons.add),),
          IconButton(onPressed: (){
            widget.docsGuncelleme.reference.delete().
            whenComplete(() => Navigator.pop(context));

          },icon: Icon(Icons.delete),),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 50.0,),

          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: TextField(
              controller: baslik,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Baslik',
              ),
            ),),
          SizedBox(height: 10.0,),
          Expanded(
            child: TextField(
              controller: aciklama,
              textAlign: TextAlign.start,
              maxLines: 100,
              expands: false,
              decoration: InputDecoration(
                border: OutlineInputBorder( ),
                hintText: 'baslik',
              ),
            ),
          ),
        ],
      ),);
  }
}
