import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth{
  final _firebaseauth=FirebaseAuth.instance;

  Future<User?> SigninAnonim()async{
    final userCredential =
    await _firebaseauth.signInAnonymously();
    return userCredential.user;
  }
  Future<User?> signOut()async{
    await FirebaseAuth.instance.signOut();
  }
}