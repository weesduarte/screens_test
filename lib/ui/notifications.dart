import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF292929),
        title: Icon(Icons.clear_outlined,
        size: 59.0,
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0xFF292929),
        height: 2000.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildRow("title 1"),
          Divider(),
            buildRow("title 2"),
          Divider(),
            buildRow("title 3"),
          ],
        ),
      ),
    );
  }
}


Widget buildRow (String text){
  return Container(
    padding: EdgeInsets.only(left:80.0, right:68.0, bottom:10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.favorite,
        color: Colors.grey,
        size: 35.0),
        Container(
          padding: const EdgeInsets.only(left: 30.0, top: 1.0, bottom: 1.0),
          child:Text(text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),) ,
        ),
      ],
    ),
  );
}