



import 'package:flutter/material.dart';

class adarsh extends StatefulWidget {
  @override
  _adarshState createState() => _adarshState();
}

class _adarshState extends State<adarsh> {
  double _volume = 0.0;
  String str="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("adarsh's corner",textDirection: TextDirection.ltr),

      ),
      body: Column(
        children: <Widget>[
          Image(image: AssetImage("images/adarsh.png"),height: 200),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Text("adarsh is one of the cse biologist in the world"),
                    Text("he is the best badminton player in the world"),
                    Text("he has crush on madam")
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
