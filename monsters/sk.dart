



import 'package:flutter/material.dart';

class sk extends StatefulWidget {
  @override
  _skState createState() => _skState();
}

class _skState extends State<sk> {
  double _volume = 0.0;
  String str="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sks corner",textDirection: TextDirection.ltr),

      ),
      body: Column(
        children: <Widget>[
          Hero(
            tag: "hero",
            child: Image(image: AssetImage("images/sk.png")),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Text("krishna is one of the ordinary person of our college"),
                    Text("he is some what lasy"),
                    Text("he has no lovers")
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
