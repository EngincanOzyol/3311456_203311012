import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'NotScreen.dart';


class not extends StatefulWidget {
  const not({Key? key}) : super(key: key);

  @override
  State<not> createState() => _notState();
}

class _notState extends State<not> {

  TextEditingController baslik=TextEditingController();
  TextEditingController aciklama=TextEditingController();
  CollectionReference ref=FirebaseFirestore.instance.collection('notes');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        actions: [
          IconButton(onPressed: (){
            ref.add({'title':baslik.text,'aciklma':aciklama.text}).whenComplete(() => Navigator.pop(context));

          },icon: Icon(Icons.add),),
        ],
      ),
      body: Container(
        child: Column(
        children: [
          SizedBox(height: 50.0,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: TextField(
                controller: baslik,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'başlık',
              ),

            ),),
          ),
          SizedBox(height: 10.0,),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  textAlign: TextAlign.start,
                  controller: aciklama,
                  maxLines: 200,
                  expands: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(

                    borderSide: BorderSide(
                        width: 0.0
                    )
                  ),

                  hintText: 'açıklama',
                ),


                ),
              ),
            ),


        ],
    ),
      ),);
  }
}
