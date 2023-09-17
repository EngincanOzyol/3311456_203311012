import 'package:flutter/material.dart';



import 'package:flutter2/view/mainPage/ProfilimPage.dart';
import 'package:flutter2/view/mainPage/noteScreen/NotScreen.dart';
import 'package:flutter2/view/mainPage/bodyTab.dart';
import 'package:google_fonts/google_fonts.dart';

import 'actionsWidget.dart';




class anasayfa extends StatefulWidget {
  const anasayfa({Key? key}) : super(key: key);
  @override
  State<anasayfa> createState() => _anasayfaState();
}
class _anasayfaState extends State<anasayfa> {
  final tabs=[
    ListViewWidget(),
    notEkran(),
    vucuttab(),
    profilim(),
  ];
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:
       Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 11,
                child: tabs[_currentIndex],
            ),
          Expanded(
            flex: 1,
            child: buildBottomNavigationBar(),
          ),
          ],
        ),
    );
  }
  Wrap buildBottomNavigationBar() {
    return Wrap(
      children: [
        BottomNavigationBar(
                      currentIndex: _currentIndex,
                        selectedFontSize: 20.0,
                        iconSize: 30.0,
                        items: const <BottomNavigationBarItem>[
                          BottomNavigationBarItem(
                            icon: Icon(Icons.fitness_center),
                            label: 'Egzersizler',
                            backgroundColor: Colors.teal,
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.calendar_month_rounded),
                            label: 'Günlükler',
                            backgroundColor: Colors.pink,
                          ),
                          BottomNavigationBarItem(
                            icon: ImageIcon(AssetImage('assets/icons/body-abs.png'),),
                            label: 'Vücut',
                            backgroundColor: Colors.purple,
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.person),
                            label: 'Profilim',
                            backgroundColor: Colors.pink,
                          ),
                        ],
                      selectedItemColor: Colors.black87,
                      onTap: (index){
                        setState(() {
                          _currentIndex=index;
                        });
                      },
                      ),
    ]
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text('EGZERSİZLER',style:GoogleFonts.oswald(textStyle: const TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),fontSize: 20.0) ,textAlign: TextAlign.center),
        hareketler(
          hareketIsmi: 'SIRT', imageIsmi: 'assets/bodyImages/sirt.jpg', route: '/back',),

        hareketler(hareketIsmi:'GÖGÜS' , imageIsmi: 'assets/bodyImages/gogus.jpeg',route: '/chest', ),

        hareketler(hareketIsmi:'OMUZ' , imageIsmi: 'assets/bodyImages/omuz.jpg',route: '/omuz', ),

        hareketler(hareketIsmi:'ÖN KOL' , imageIsmi: 'assets/bodyImages/onkol.jpg',route: '/onkol',),

        hareketler(hareketIsmi:'ARKA KOL' , imageIsmi: 'assets/bodyImages/arkakol.jpg',route: '/arkakol',),

        hareketler(hareketIsmi:'BACAK' , imageIsmi: 'assets/bodyImages/bacak.jpg',route: '/bacak',),

      ],

    );
  }
}
