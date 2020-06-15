



import 'package:flutter/material.dart';

class nishant extends StatefulWidget {
  @override
  _nishantState createState() => _nishantState();
}

class _nishantState extends State<nishant> {
  double _volume = 0.0;
  String str="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("nishant corner",textDirection: TextDirection.ltr),

      ),
      body: Column(
        children: <Widget>[
          Image(image: AssetImage("images/nishant.png")),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Text("nishant is the biggest body bulider in the world"),
                    Text("he is very good at photography"),
                    Text("he was the crush for all girls")
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
