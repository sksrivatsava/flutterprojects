
import 'package:flutter/material.dart';

void main(){
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
  @override
  List<dynamic> lo =[];
  List<dynamic> l=[];
  List<String> ls=["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""];
  List<Widget> li =[];
  var s;
  int i=0;
  bool areListsEqual(var list1, var list2) {
    // check if both are lists
    if(!(list1 is List && list2 is List)
        // check if both have same length
        || list1.length!=list2.length) {
      return false;
    }

    // check if elements are equal
    for(int i=0;i<list1.length;i++) {
      if(list1[i]!=list2[i]) {
        return false;
      }
    }

    return true;
  }

  void initState(){
    super.initState();
    start();

  }
  void ca(){
    setState(() {
      li=[];
      for(int i=0;i<81;i++) {
        if (l[i] == 0) {
          li.add(Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.yellow,

              child: Center(
                child: TextField(

                  onChanged: (s) {
                    setState(() {
                      lo[i] = int.parse(s);
                    });
                  },
                ),
              ),
            ),
          ));
        }
        else {
          li.add(Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                color: Colors.yellow,

                child: Center(child: Text(l[i].toString()))),
          ));
        }
      }

    });
  }

  void start(){

    lgenerate();
    li=[];
    for(int i=0;i<81;i++){
      setState(() {
        if (lo[i]==0){

          li.add(Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.yellow,

              child: Center(
                child: TextField(

                  onChanged: (s){
                    setState(() {
                      lo[i]=int.parse(s);


                    });

                  },
                ),
              ),
            ),
          ));
        }
        else{
          li.add(Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                color: Colors.yellow,

                child: Center(child: Text(l[i].toString()))),
          ));
        }
      });
    }

  }
  List<dynamic> s3(f){
    return f.sublist(3,9)+f.sublist(0,3);

  }
  List<dynamic> s1(f){
    return f.sublist(1,9)+f.sublist(0,1);
  }
  void lgenerate(){

      setState(() {
        s="";
        List<dynamic> f=[1,2,3,4,5,6,7,8,9];
        l=[];
        lo=[];
        f.shuffle();

        for(int i=0;i<9;i++){
          l.add(f[i]);
        }
        f=s3(f);
        for(int i=0;i<9;i++){
          l.add(f[i]);
        }
        f=s3(f);
        for(int i=0;i<9;i++){
          l.add(f[i]);
        }
        f=s1(f);
        for(int i=0;i<9;i++){
          l.add(f[i]);
        }
        f=s3(f);
        for(int i=0;i<9;i++){
          l.add(f[i]);
        }
        f=s3(f);
        for(int i=0;i<9;i++){
          l.add(f[i]);
        }
        f=s1(f);
        for(int i=0;i<9;i++){
          l.add(f[i]);
        }
        f=s3(f);
        for(int i=0;i<9;i++){
          l.add(f[i]);
        }
        f=s3(f);
        for(int i=0;i<9;i++){
          l.add(f[i]);
        }
        int j=0;
        for(int i=0;i<9;i++){
          print(l.sublist(j,j+9));
          j=j+9;
        }

        List<dynamic> list;

        j=0;
        for(int t=0;t<81;t++){
          if(t==j){
            list = [for(var i=j; i<j+9; i+=1) i];
            list.shuffle();
            //print("list");
            //print(list);
            j=j+9;
          }
          if(t==list[0] || t==list[1]){
            lo.add(0);
          }
          else{
            lo.add(l[t]);
          }


        }

        print("question");
        j=0;
        for(int i=0;i<9;i++){
          print(lo.sublist(j,j+9));
          j=j+9;
        }

      });


  }
  showAlertDialog(BuildContext context,var str) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      color: Colors.black,
      onPressed: () {
        if(str=="won") {
          start();
          Navigator.of(context).pop();
        }
        else{
          Navigator.of(context).pop();
        }
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(str=="won"?"Congrats":"wrong"),
      content: Text(str=="won"?"you crack it":"try again later"),
      backgroundColor: str=="won"?Colors.green:Colors.red,
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sudoku"),
        actions: <Widget>[
          FlatButton(
            child: Text("new game"),
            onPressed: (){
              start();
            },
          ),
          FlatButton(
            child: Text("check answer"),
            onPressed: (){
              ca();
            },
          ),
          FlatButton(
            child: Text("submit"),
            onPressed: (){
              print(l);
              print(lo);
              if(areListsEqual(l, lo)){
               showAlertDialog(context, "won");

              }
              else{
                showAlertDialog(context, "no");
              }
            },
          )


        ],


      ),
      body:Container(
        decoration: new BoxDecoration(

          image: new DecorationImage(image: new AssetImage('images/sudoku.jpg',),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,


          )
        ),
          child: GridView.count(crossAxisCount: 9,

          children: li,)
          )

    );
  }
}
