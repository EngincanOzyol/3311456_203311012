import 'dart:convert';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';
import 'package:provider/provider.dart';
import '../../models/services/themeSettings.dart';

import '../../widget/listBuilld.dart';
import '../../models/doingActionsList.dart';



class yapilisHareket extends StatefulWidget {
  final List? list;
  final String? videos;
  final String? images;
  final dynamic? kilitipucu;
  final String? text;

  yapilisHareket({this.list,this.kilitipucu,this.videos,this.images,this.text});
  @override
  State<yapilisHareket > createState() => _yapilisHareketState();
}
class _yapilisHareketState extends State<yapilisHareket> {
  late ChewieController controller;
  void initState() {
      controller = ChewieController(

        videoPlayerController:
        VideoPlayerController.asset(widget.videos!),
        aspectRatio: 5/ 3,
        autoInitialize: true,
        autoPlay: true,
        looping: true,
      );
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:Provider.of<ThemeModel>(context,listen: true).currentTheme,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: true,
              backgroundColor: Colors.pink,
              actions: <Widget>[
                buildIconButton(context)
              ],
              bottom: buildTabBar(),
              title: Text(widget.text!),
            ),
            body: Column(
              children: [
                Expanded(
                  child: buildTabBarView(),
                ),
                ListTile(leading: Text('NASIL YAPILIR',style: TextStyle(fontFamily:'BraahOne',fontSize: 20.0,color: Colors.lightBlue),)),
                Expanded(
                  child: buildListView(),
                ),
                buildTextButton(context)
              ],
            ),

          ),
        ),
    );
  }
  ListView buildListView() {
    return ListView.builder(
                  itemCount: widget.list?.length,
                  itemBuilder: (BuildContext context, int sayi) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text((sayi + 1).toString()),
                      ),
                      title: Text(widget.list![sayi].toString(),style: const TextStyle(fontSize: 20.0,color: Colors.lightBlue),),
                    );
                  },
                );
  }
  TabBarView buildTabBarView() {
    return TabBarView(
                  children: [
                    Image(
                      image: AssetImage(widget.images!),
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                      child: Chewie(
                        controller: controller,
                      ),
                    ),
                  ],
                );
  }
  IconButton buildIconButton(BuildContext context) {
    return IconButton(
                iconSize: 30.0,
                tooltip:'ANASAYFA',
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context,'/anasayfa');
                },
              );
  }
  TextButton buildTextButton(BuildContext context) {
    return TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent,
                  fixedSize:Size(150.0, 50.0),
                ),
                child: const Text('KİLİT İPUÇLARI',style: TextStyle(color: Colors.cyanAccent),),
                onPressed: ()async{
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.limeAccent,
                          insetPadding: EdgeInsets.zero,
                          contentPadding: EdgeInsets.all(10.0),
                          title: const Text("UYARI!!",style: TextStyle(color: Colors.black87)),
                          content:NewWidget(
                            list: widget.kilitipucu,
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text("Tamam",style: TextStyle(color: Colors.black87)),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                },
              );
  }

  TabBar buildTabBar() {
    return const TabBar(
              indicatorColor: Colors.black87,
              unselectedLabelColor: Colors.amberAccent,
              tabs: [
                Text(
                  'YAPILIŞ',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                Text(
                  'ÖGRETİCİ',
                  style: TextStyle(fontSize: 20.0, color: Colors.teal),
                ),
              ],
            );
  }

}
