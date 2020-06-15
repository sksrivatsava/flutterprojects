



import 'package:flutter/material.dart';

class bhavesh extends StatefulWidget {
  @override
  _bhaveshState createState() => _bhaveshState();
}

class _bhaveshState extends State<bhavesh> {
  double _volume = 0.0;
  String str="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bhavesh's corner",textDirection: TextDirection.ltr),

      ),
      body: Column(
        children: <Widget>[
          Image(image: AssetImage("images/bhavesh.png"),height: 200),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Text("bhavesh is the one of the great mathematician and physist in the world"),
                    Text("he is looks like a stick"),
                    Text("he has lover ____")
                  ],
                ),
              ),
            ),
          ),
          RaisedButton(
            child: Text("Back"),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),

    );
  }
}
