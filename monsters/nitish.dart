



import 'package:flutter/material.dart';

class nitish extends StatefulWidget {
  @override
  _nitishState createState() => _nitishState();
}

class _nitishState extends State<nitish> {
  double _volume = 0.0;
  String str="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("nitish corner",textDirection: TextDirection.ltr),

      ),
      body: Column(
        children: <Widget>[
          Image(image: AssetImage("images/nitish.png"),height
          : 200),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Text("nitish was top in ML,AI"),
                    Text("he is one of the large person in the world"),
                    Text("he has many lovers like 24,1,civil")
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
