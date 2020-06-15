



import 'package:flutter/material.dart';

class pranav extends StatefulWidget {
  @override
  _pranavState createState() => _pranavState();
}

class _pranavState extends State<pranav> {
  double _volume = 0.0;
  String str="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pranav corner",textDirection: TextDirection.ltr),

      ),
      body: Column(
        children: <Widget>[
          Image(image: AssetImage("images/pranav.png")),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Text("pranav is the topper of our college"),
                    Text("he is one of the finest singer the world"),
                    Text("he is multi talented and he has lover yuktha")
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
