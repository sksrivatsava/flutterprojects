import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home:MyApp()
      )
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> s=['','','','','','','','',''];
  List<dynamic> c=[0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,];
  List play1=[];
  List play2=[];

  var active =1;

  void game(var x){
    setState(() {
      if(active==1){
        s[x]='X';
        c[x]=0xffff0000;
        active=2;
        play1.add(x);

      }
      else if(active==2){
        s[x]='O';
        c[x]=0xff0000ff;
        active=1;
        play2.add(x);

      }

      //row
      if(play1.contains(0) && play1.contains(1) && play1.contains(2)){
        showAlertDialog(context,"x");
      }
      else if(play2.contains(0) && play2.contains(1) && play2.contains(2)){
        showAlertDialog(context,"O");
      }
      else if(play1.contains(3) && play1.contains(4) && play1.contains(5)){
        showAlertDialog(context,"x");
      }
      else if(play2.contains(3) && play2.contains(4) && play2.contains(5)){
        showAlertDialog(context,"O");
      }
      else if(play1.contains(6) && play1.contains(7) && play1.contains(8)){
        showAlertDialog(context,"x");
      }
      else if(play2.contains(6) && play2.contains(7) && play2.contains(8)){
        showAlertDialog(context,"O");
      }
      //column
      else if(play1.contains(0) && play1.contains(3) && play1.contains(6)){
        showAlertDialog(context,"x");
      }
      else if(play2.contains(0) && play2.contains(3) && play2.contains(6)){
        showAlertDialog(context,"O");
      }
      else if(play1.contains(1) && play1.contains(4) && play1.contains(7)){
        showAlertDialog(context,"x");
      }
      else if(play2.contains(1) && play2.contains(4) && play2.contains(7)){
        showAlertDialog(context,"O");
      }
      else if(play1.contains(2) && play1.contains(5) && play1.contains(8)){
        showAlertDialog(context,"x");
      }
      else if(play2.contains(2) && play2.contains(5) && play2.contains(8)){
        showAlertDialog(context,"O");
      }
      //diagnol
      else if(play1.contains(0 ) && play1.contains(4) && play1.contains(8)){
        showAlertDialog(context,"x");
      }
      else if(play2.contains(0) && play2.contains(4) && play2.contains(8)){
        showAlertDialog(context,"O");
      }
      else if(play1.contains(2) && play1.contains(4) && play1.contains(6)){
        showAlertDialog(context,"x");
      }
      else if(play2.contains(2) && play2.contains(4) && play2.contains(6)){
        showAlertDialog(context,"O");
      }
      else if(!s.contains("")){
        showAlertDialog(context, "tied");
      }
      print(play1);
      print(play2);

    });
  }
  showAlertDialog(BuildContext context,var str) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      color: Colors.black,
      onPressed: () {
        setState(() {
          s=['','','','','','','','',''];
          c=[0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,];
          play1=[];
          play2=[];
          active=1;

        });
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(str=="tied"?"Game Tied":"Congrats"),
      content: Text(str=="tied"?"tied match":str + " has won"),
      backgroundColor: str=="tied"?Colors.white:str=="x"?Colors.red:Colors.blue,
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
        title: Text("Tic Tac Toe"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: (){
              setState(() {
                s=['','','','','','','','',''];
                c=[0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,0xffFFFFFF,];
                play1=[];
                play2=[];
                active=1;
              });
            },
          )
        ],
      ),
      body: Container(
        child: GridView.count(crossAxisCount: 3,

        children: <Widget>[
          RaisedButton(
            child: Center(child: Text(s[0],style: TextStyle(fontSize: 70),)),
            color: Color(c[0]),
            onPressed: (){

              if(s[0]==""){game(0);}

              print("hello");
            },
          ),
          RaisedButton(
            child: Center(child: Text(s[1],style: TextStyle(fontSize: 70),)),
            color: Color(c[1]),
            onPressed: (){
             if(s[1]=="") game(1);
            },
          ),RaisedButton(

            child: Center(child: Text(s[2],style: TextStyle(fontSize: 70),)),
            color: Color(c[2]),
            onPressed: (){
              if(s[2]=="")game(2);
            },
          ),RaisedButton(
            child: Center(child: Text(s[3],style: TextStyle(fontSize: 70),)),
            color: Color(c[3]),
            onPressed: (){
              if(s[3]=="")game(3);
            },
          ),RaisedButton(
            child: Center(child: Text(s[4],style: TextStyle(fontSize: 70),)),
            color: Color(c[4]),
            onPressed: (){
              if(s[4]=="")game(4);
            },
          ),RaisedButton(
            child: Center(child: Text(s[5],style: TextStyle(fontSize: 70),)),
            color: Color(c[5]),
            onPressed: (){
              if(s[5]=="")game(5);
            },
          ),RaisedButton(
            child: Center(child: Text(s[6],style: TextStyle(fontSize: 70),)),
            color: Color(c[6]),
            onPressed: (){
              if(s[6]=="")game(6);
            },
          ),RaisedButton(
            child: Center(child: Text(s[7],style: TextStyle(fontSize: 70),)),
            color: Color(c[7]),
            onPressed: (){
              if(s[7]=="") game(7);
            },
          ),RaisedButton(
            child: Center(child: Text(s[8],style: TextStyle(fontSize: 70),)),
            color: Color(c[8]),
            onPressed: (){
              if(s[8]=="")game(8);
            },
          ),
          SizedBox(),
          Card(

            child: Center(child: Text(active==1?"X turn":"O turn",style: TextStyle(fontSize: 30),)),
            color: active==1?Color(0xffff0000):Colors.blue,
          ),
        ],)
      ),
    );
  }
}
