

import 'package:cloud_firestore/cloud_firestore.dart';

class refernceDokumen{

  DocumentReference  refBoykilo=FirebaseFirestore.instance.collection('boyKilo').doc('boyumKilom');
  DocumentReference  refkilo=FirebaseFirestore.instance.collection('boyKilo').doc('kilom');
  DocumentReference  refVucutYag=FirebaseFirestore.instance.collection('boyKilo').doc('vucutYag');
  DocumentReference  refboyun=FirebaseFirestore.instance.collection('boyKilo').doc('boyun');
  DocumentReference  refgogus=FirebaseFirestore.instance.collection('boyKilo').doc('chest');
  DocumentReference  refbel=FirebaseFirestore.instance.collection('boyKilo').doc('bel');
  DocumentReference  refkalca=FirebaseFirestore.instance.collection('boyKilo').doc('kalca');
  DocumentReference  refsolPazi=FirebaseFirestore.instance.collection('boyKilo').doc('solPazi');
  DocumentReference  refsagPazi=FirebaseFirestore.instance.collection('boyKilo').doc('sagPazi');
  DocumentReference  refsolUyluk=FirebaseFirestore.instance.collection('boyKilo').doc('solUyluk');
  DocumentReference  refsagUyluk=FirebaseFirestore.instance.collection('boyKilo').doc('sagUyluk');
  DocumentReference  refsagKalf=FirebaseFirestore.instance.collection('boyKilo').doc('sagKalf');
  DocumentReference  refsolKalf=FirebaseFirestore.instance.collection('boyKilo').doc('solKalf');
  DocumentReference refisim=FirebaseFirestore.instance.collection('profil').doc('isim');
  DocumentReference  refTarih=FirebaseFirestore.instance.collection('boyKilo').doc('dogumTarihi');
  DocumentReference  refCinsiyet=FirebaseFirestore.instance.collection('profil').doc('cinsiyet');
}