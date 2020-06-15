



import 'package:flutter/material.dart';

class home1 extends StatefulWidget {
  @override
  _home1State createState() => _home1State();
}

class _home1State extends State<home1> {
  double _volume = 0.0;
  String str="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first app",textDirection: TextDirection.ltr),

      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.volume_up),
                          onPressed: (){
                            setState(() {
                              _volume=_volume+10;
                              if(_volume>=50){
                                str="volume full";
                                _volume=50.0;

                              }

                            });
                          }),

                      IconButton(icon: Icon(Icons.volume_down),
                          onPressed: (){
                            setState(() {
                              _volume=_volume-10;
                              if(_volume<50){
                                str="";
                              }
                              if(_volume<0){
                                _volume=0.0;
                              }

                            });
                          }),

                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(_volume.toString(),textDirection: TextDirection.ltr),
                      ),
                      Text(str,textDirection: TextDirection.ltr,),


                    ],
                  ),
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
