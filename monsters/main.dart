
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pranav.dart';
import 'kc.dart';
import 'sk.dart';
import 'nitish.dart';
import 'nishant.dart';
import 'adarsh.dart';
import 'bhavesh.dart';
void main() =>
    runApp(MaterialApp(
      home: home(),
      routes: <String,WidgetBuilder>{
        "/pranav": (BuildContext context) => pranav(),
        "/kc": (BuildContext context) => kc(),
        "/sk": (BuildContext context) => sk(),
        "/nitish": (BuildContext context) => nitish(),
        "/nishant": (BuildContext context) => nishant(),
        "/adarsh": (BuildContext context) => adarsh(),
        "/bhavesh": (BuildContext context) => bhavesh(),

      },
    ));
class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin{

  AnimationController ans;
  Animation a;
  @override
  void initState(){
    super.initState();
     ans= AnimationController(
       vsync: this,
       duration: new Duration(seconds:5),);
      a=ColorTween(begin: Colors.pinkAccent,end:Colors.purple).animate(ans);
    ans.forward();
    ans.addListener((){
      setState((){});
      print(ans.value);
      if(ans.value==1.0){
        ans.reverse();
      }
      else if(ans.value==0.0){
        ans.forward();
      }
    });
  }
  String str="";
  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("login"),
      content: TextField(
        decoration: const InputDecoration(
          icon: const Icon(Icons.person),
          hintText: 'Enter your name with small letters',
          labelText: 'Name',),
          onChanged: (text){
          setState(() {
            str=text;
          });

        },
      ),

      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ans.value<=1.0 && ans.value>=0.5?" MONSTERS CLUB":"NICE MONSTERS CLUB",textDirection: TextDirection.ltr),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.person),
          onPressed: (){
            showAlertDialog(context);
          },),
          //Text("login")
          Center(
            child: Text("Login"),
          )
        ],
        
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(
                  image: AssetImage("images/bg.jpeg")
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0,left: 16.0),
                  child: Hero(
                    tag: "hero",
                    child: CircleAvatar(
                      radius:40.0,
                      backgroundImage: AssetImage("images/"+str+".png"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:120.0,left:16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(str,style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 16.0,color: Colors.white)),
                    ],
                  ),
                )

              ],
            ),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.person),
                title: Text('profile'),
                onTap: (){
                    Navigator.pushNamed(context,"/"+str);
                },
              )
            ],
          ),
          ],
        )
      ),
      body: Container(
        color: a.value,
      
        child: GridView.count(
          
          
          crossAxisCount: 2,
          children: <Widget>[
          
              
               Padding(
                
                padding: EdgeInsets.all(ans.value*10),
                child: RaisedButton(
                  color: Colors.amberAccent.withOpacity(ans.value),
                  child: Text("Pranavs corner"),
                 onPressed: (){
                    Navigator.pushNamed(context, "/pranav");
                    print("pranav");
                 },
                  shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
            
                  ),
              ),
            
              Padding(
          padding:  EdgeInsets.all(ans.value*10),
          child: RaisedButton(
          child: Text("KCs corner"),
            color: Color(0xff1B5E20).withOpacity(ans.value),
            onPressed: (){
              Navigator.pushNamed(context, "/kc");
            },
            shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
            ),
        ),
          Padding(
        padding:  EdgeInsets.all(ans.value*10),
        child: RaisedButton(
        child: Text("sks corner"),
                color: Colors.blue.withOpacity(ans.value),
                onPressed: (){
                  Navigator.pushNamed(context, "/sk");
                },
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
                ),
          ), Padding(
        padding: EdgeInsets.all(ans.value*10),
        child: RaisedButton(
        color: Colors.brown.withOpacity(ans.value),
        child: Text("nitish corner"),
                onPressed: (){
                  Navigator.pushNamed(context, "/nitish");
                },
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
                  ),
          ), Padding(
        padding: EdgeInsets.all(ans.value*10),
        child: RaisedButton(
                color: Colors.green.withOpacity(ans.value),
        child: Text("nishant corner"),
                onPressed: (){
                  Navigator.pushNamed(context, "/nishant");
                },
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
                  ),
          ), Padding(
        padding:  EdgeInsets.all(ans.value*10),
        child: RaisedButton(
                color: Colors.orange.withOpacity(ans.value),
        child: Text("bhavesh corner"),
                onPressed: (){
                  Navigator.pushNamed(context, "/bhavesh");
                },
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
          ),
          ),
            Padding(
              padding:  EdgeInsets.all(ans.value*10),
              child: RaisedButton(
                color: Colors.orange.withOpacity(ans.value),
                child: Text("adarsh corner"),
                onPressed: (){
                  Navigator.pushNamed(context, "/adarsh");
                },
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
                ),
            ),
              ],
          ),
      ),
    );
  }
}
