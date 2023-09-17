// @dart=2.12.0




import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


import 'package:flutter2/models/services/themeSettings.dart';

import 'package:flutter2/view/actions/back/LatPullDown.dart';
import 'package:flutter2/view/actions/back/barfix.dart';
import 'package:flutter2/view/actions/back/deadlift.dart';
import 'package:flutter2/view/actions/back/dumbellRow.dart';
import 'package:flutter2/view/actions/back/tBarRow.dart';
import 'package:flutter2/view/actions/biceps/cableCurls.dart';
import 'package:flutter2/view/actions/biceps/concentrationCurl.dart';
import 'package:flutter2/view/actions/biceps/dambellPreacher.dart';
import 'package:flutter2/view/actions/biceps/ezBarBiceps.dart';
import 'package:flutter2/view/actions/biceps/hammerCurl.dart';
import 'package:flutter2/view/actions/chest/benchPress.dart';
import 'package:flutter2/view/actions/chest/cableCrossOver.dart';
import 'package:flutter2/view/actions/chest/declineDumbell.dart';
import 'package:flutter2/view/actions/chest/dumbelFly.dart';
import 'package:flutter2/view/actions/chest/flyMachine.dart';
import 'package:flutter2/view/actions/leg/legCurl.dart';
import 'package:flutter2/view/actions/leg/legExtension.dart';
import 'package:flutter2/view/actions/leg/legPress.dart';
import 'package:flutter2/view/actions/leg/squat.dart';
import 'package:flutter2/view/actions/leg/stepUp.dart';
import 'package:flutter2/view/actions/shoulder/barbellShoulder.dart';
import 'package:flutter2/view/actions/shoulder/bentOver.dart';
import 'package:flutter2/view/actions/shoulder/dumbellFront.dart';
import 'package:flutter2/view/actions/shoulder/lateralRaise.dart';
import 'package:flutter2/view/actions/shoulder/shoulderPress.dart';
import 'package:flutter2/view/actions/triceps/benchDip.dart';
import 'package:flutter2/view/actions/triceps/cablePushDown.dart';
import 'package:flutter2/view/actions/triceps/dumbellKickBack.dart';
import 'package:flutter2/view/actions/triceps/lying.dart';
import 'package:flutter2/view/actions/triceps/overHeadExtension.dart';

import 'package:flutter2/view/actionsScreen/arkaKolHareketleri.dart';
import 'package:flutter2/view/actionsScreen/bacakHareketleri.dart';
import 'package:flutter2/view/actionsScreen/gogusHareket.dart';
import 'package:flutter2/view/actionsScreen/omuzHareketleri.dart';
import 'package:flutter2/view/actionsScreen/onKolHareketleri.dart';
import 'package:flutter2/view/actionsScreen/sirtHareket.dart';
import 'package:flutter2/view/mainPage/noteScreen/noteAdd.dart';
import 'package:flutter2/widget/mainPageWidget.dart';


import 'package:flutter2/models/services/authServices.dart';
import 'package:flutter2/models/on_board.dart';
import 'package:flutter2/view/entryScreens/heightWeightDatebirth.dart';
import 'package:flutter2/view/entryScreens/gender.dart';
import 'package:flutter2/view/entryScreens/bodyParts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'view/mainPage/noteScreen/NotScreen.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp( ChangeNotifierProvider<ThemeModel>(create: (BuildContext context)=>ThemeModel(),
  child: screen()));
}
class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);
  @override
  State<screen> createState() => _screenState();
}
class _screenState extends State<screen> {
  final Future<FirebaseApp> _initial=Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return Provider<Auth>(create: (context)=>Auth(),
      child: MaterialApp(
        theme:Provider.of<ThemeModel>(context,listen: true).currentTheme,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'),
            Locale('tr'),
          ],
        initialRoute: '/',
        routes: {
          '/cinsiyet': (context) => const cinsiyet(),
          '/boykilo' :(context)=>boykiloDogumTarihi(),
          '/vucutbolum':(context)=>vucutBolum(),
          '/back':(context)=>sirthareket(),
          '/chest':(context)=>gogushareket(),
          '/onkol':(context)=>onKolHareket(),
          '/arkakol':(context)=>arkakolhareket(),
          '/bacak':(context)=>bacakhareket(),
          '/omuz':(context)=>omuzHareket(),
          '/barfix':(context)=>barfixHareket(),
          '/deadlift':(context)=>deadlift(),
          '/dumbellrow':(context)=>dumbellrow(),
          '/latpuldown':(context)=>latpulldown(),
          '/tbarRow':(context)=>tbarRow(),
          '/benchpress':(context)=>benchpress(),
          '/cable':(context)=>cableCrossOver(),
          '/decline':(context)=>declineDumbell(),
          '/dumbellFly':(context)=>dumbelFly(),
          '/flymachine':(context)=>flyMachine(),
          '/shoulderPress':(context)=>shoulder(),
          '/barbellCurl':(context)=>barbellCurl(),
          '/dumbellFront':(context)=>dumbellFront(),
          '/lateralRaise':(context)=>lateralRaise(),
          '/bentOver':(context)=>bentOver(),
          '/legCurl':(context)=>legCurl(),
          '/legExtension':(context)=>legExtension(),
          '/legPress':(context)=>legPress(),
          '/squat':(context)=>squat(),
          '/stepUp':(context)=>stepUp(),
          '/benchDips':(context)=>benchDip(),
          '/cablePushDown':(context)=>cablePushDown(),
          '/dumbellKickBack':(context)=>dumbellKickBack(),
          '/lyingTriceps':(context)=>lying(),
          '/overHeadExtension':(context)=>overHeadExtension(),
          '/cableCurls':(context)=>cableCurls(),
          '/concentrationCurl':(context)=>concentrationCurl(),
          '/dumbellPreacher':(context)=>dambellPreacher(),
          '/ezBarBiceps':(context)=>ezBarBiceps(),
          '/hammerCurl':(context)=>hammerCurl(),
          '/anasayfa':(context)=>anasayfa(),
          '/noteScreen':(context)=>not(),
        },
        home:FutureBuilder(
          future:_initial,
          builder: (context,snapshot){
            if(snapshot.hasError){
              return Center(child: Text('Sistemde hata var'),);
            }
            else if(snapshot.hasData){
              return  Scaffold(
                backgroundColor: Colors.teal,
                body: onBoardwidget(),
              );
            }
            else{
              return CircularProgressIndicator();
            }
          },
        )
      ),
    );
  }
}
