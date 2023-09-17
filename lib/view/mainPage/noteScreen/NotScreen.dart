import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


import 'noteUpdate.dart';

class notEkran extends StatefulWidget {
  const notEkran({Key? key}) : super(key: key);
  @override
  State<notEkran> createState() => _notEkranState();
}
class _notEkranState extends State<notEkran> {
 CollectionReference notlarRef=FirebaseFirestore.instance.collection('notes');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NOTLARIM'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.pink,
      ),
      body: StreamBuilder(
        stream:notlarRef.snapshots() ,

        builder:(context, asyncSnapshot) {
          if (asyncSnapshot.hasError) {
            return Center(child: Text('hata var'),);
          } else {
            if (!asyncSnapshot.hasData) {
              return Center(child: CircularProgressIndicator(),);
            }
            else {
             List<DocumentSnapshot> docss= asyncSnapshot.data?.docs as List<DocumentSnapshot>;
              return GridView.builder(
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: docss.length,
                itemBuilder: (_, int index) {
                  Map<String,dynamic> convert= docss[index].data() as Map<String,dynamic>;
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>notGuncelleme(docsGuncelleme:docss[index])));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Colors.teal,),
                      height: 25.0,
                      width: 25.0,
                      child: Column(
                        children: [
                          Text(convert['title'],style: TextStyle(color: Colors.white,fontSize: 22.0),),
                          const SizedBox(height: 12.0,),
                          Text(convert['aciklma'],style: TextStyle(color: Colors.black,fontSize: 16.0),),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        mini: false,
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.pushNamed(context, '/noteScreen');
        },
        child: Icon(Icons.create),
      ),
    );
  }
}
