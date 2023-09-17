import 'package:flutter/material.dart';


import 'package:flutter2/models/services/themeSettings.dart';
import 'package:flutter2/view/entryScreens/profil.dart';

import 'package:flutter2/view/mainPage/profilInformation.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../models/services/authServices.dart';


class profilim extends StatefulWidget {
  const profilim({Key? key}) : super(key: key);

  @override
  State<profilim> createState() => _profilimState();
}
enum type1 {Light, Dark}
class _profilimState extends State<profilim> {
  bool light = true;
  var value=0;
 List<String> list= ["karanlık","aydınlık"];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(backgroundColor: Colors.black54,title:   Text('Profilim',style: TextStyle(fontSize: 30.0),),automaticallyImplyLeading: false,),
          body:ListView(
        children: [
          profilGestureDetector(context),
          Card(
            color: Colors.white12,
            child: dataCleanGestureDetector(context),
          ),
          themeGestureDetector(context),
          Text('İletişim',style: TextStyle(fontSize: 30.0,),),
          mailCard(),
          phoneCard(context),
          instagramCard()
        ],
      ));
  }
  GestureDetector profilGestureDetector(BuildContext context) {
    return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>profilBilgi(),));
          },
          child: const Card(
            color: Colors.white12,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('profil',style: TextStyle(fontSize: 20.0)),

            ),
          ),
        );
  }
  GestureDetector dataCleanGestureDetector(BuildContext context) {
    return GestureDetector(
            onTap: (){
              Provider.of<Auth>(context,listen: false).signOut();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>profil()));
            },
            child: const ListTile(
              leading: Icon(Icons.cleaning_services_sharp),
              title: Text('Verileri Temizle',style: TextStyle(fontSize: 20.0),),

            ),
          );
  }

  GestureDetector themeGestureDetector(BuildContext context) {
    return GestureDetector(
          onTap: (){
          },
          child: Card(
            color: Colors.white12,
            child: ListTile(
              leading: const Icon(Icons.color_lens_rounded),
              title: const Text('Mod',style: TextStyle(fontSize: 20.0),),
              trailing:  FlutterToggleTab(
                width: 40,
                borderRadius: 15,
                selectedIndex:value,
                selectedTextStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
                unSelectedTextStyle: const TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
                labels: list,
                icons: const [Icons.mode_night_sharp,Icons.light_mode],
                selectedLabelIndex: (index) {
              setState(() {
                value=index;
                if(value==0){
                  Provider.of<ThemeModel>(context,listen: false).toggleTheme();

                }
                else{
                  Provider.of<ThemeModel>(context,listen: false).toglethem();

                }
              });

                },
              ),

            ),
          ),
        );
  }

  Card instagramCard() {
    return Card(
      color: Colors.white12,
          child: ListTile(
            leading: Icon(Icons.social_distance),
            title: const Text('İnstagram',style: TextStyle(fontSize: 20.0)),
            trailing: TextButton(onPressed: () async {
              await sendInsta();
            }, child: Text('Ulaşabilirsiniz',style: TextStyle(fontSize: 20.0,color: Colors.white)),),
          ),
        );
  }

  Future<void> sendInsta() async {
     const nativeUrl = "https://instagram.com/engin_canozyol?igshid=OGQ5ZDc2ODk2ZA==+";
    const webUrl = "https://www.instagram.com/engin_canozyol/";
    if (await launchUrlString(nativeUrl)) {
    await launchUrlString(nativeUrl);
    } else if (await launchUrlString(webUrl)) {
    await launchUrlString(webUrl);
    } else {
    print("can't open Instagram");
    }
  }

  Card phoneCard(BuildContext context) {
    return Card(
      color: Colors.white12,
          child: ListTile(
            leading: Icon(Icons.phone),
            title: Text('Telefon',style: TextStyle(fontSize: 20.0)),
            trailing: TextButton(onPressed: () async {
                await sendPhone(context);
            }, child: Text('Ulaşabilirsiniz',style: TextStyle(fontSize: 20.0,color: Colors.white))),
          ),
        );
  }

  Future<void> sendPhone(BuildContext context) async {
      String? encodeQueryParameters(Map<String, String> params) {
                  return params.entries
      .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
                  }

                  Uri smsUri = Uri(
                  scheme: 'sms',
                  path: '+905439340155',
                  query: encodeQueryParameters(<String, String>{
                  'body':
                  'Merhaba,size nasıl yardımcı olabilirim?'
                  }),
                  );

                  try {
                  if (await launchUrl(smsUri)) {
                  await launchUrl(smsUri);
                  }
                  } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                  content: Text('Hata oluştu'),
                  ),
                  );
                  }
  }

  Card mailCard() {
    return Card(
      color: Colors.white12,
          child: ListTile(
            leading: Icon(Icons.mail),
            title: Text('Mail',style: TextStyle(fontSize: 20.0)),
            trailing:TextButton(
                onPressed: () async {
                  sendMail();
                },
                child: Text("Ulaşabilirsiniz",style: TextStyle(fontSize: 20.0,color: Colors.white)),
            ) ,
          ),
        );
  }

  void sendMail() {
      String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
      '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }
    // ···
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'eymeneyup@gmail.com',
      query: encodeQueryParameters(<String, String>{
        'subject': 'Example Subject & Symbols are allowed!',
      }),
    );

    launchUrl(emailLaunchUri);
  }
}
