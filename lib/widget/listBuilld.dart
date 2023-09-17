import 'package:flutter/material.dart';

class NewWidget extends StatefulWidget {

  final List<String>? list;

  const NewWidget({super.key, this.list});

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 250.0,
      child: buildListView(),
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
          title: Text(widget.list![sayi].toString(),style: TextStyle(fontSize: 20.0,color: Colors.black87),),
        );
      },


    );
  }
}