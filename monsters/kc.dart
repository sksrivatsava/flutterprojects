



import 'package:flutter/material.dart';

class kc extends StatefulWidget {
  @override
  _kcState createState() => _kcState();
}

class _kcState extends State<kc> {
  double _volume = 0.0;
  String str="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KCs corner",textDirection: TextDirection.ltr),

      ),
      body: Column(
        children: <Widget>[
          Hero(tag: "hero", 

            child: Image(image: AssetImage("images/kc.png"),
            height:200 ,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Text("kc is the best coder in the wold"),
                    Text("he is one of the talented person in  completing the task in time "),
                    Text("he love kurkure and he love power of 2 ")
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
