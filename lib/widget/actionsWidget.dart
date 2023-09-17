









import 'package:flutter2/models/services/authServices.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class hareketler extends StatefulWidget {
  String? hareketIsmi;
  String? imageIsmi;
  String? route;
  hareketler({required this.hareketIsmi, required this.imageIsmi,this.route});
  @override
  State<hareketler> createState() => _hareketlerState();
}
class _hareketlerState extends State<hareketler> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(23.0),
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.1,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: hareketTextButton(context),
      ),
    );
  }
  TextButton hareketTextButton(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.teal,
            padding: EdgeInsets.symmetric(horizontal: 0.0)),
        onPressed: (){
          Navigator.pushNamed(context, widget.route!);
          Provider.of<Auth>(context,listen: false).SigninAnonim();
        },
        child: Row(
          children: [
            Image(
              fit: BoxFit.cover,
              image: AssetImage(widget.imageIsmi!),
              width: 50.0,
              height: 50.0,
            ),
            SizedBox(width: 8.0,),
            Text(widget.hareketIsmi!,style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
          ],
        ),
      );
  }
}