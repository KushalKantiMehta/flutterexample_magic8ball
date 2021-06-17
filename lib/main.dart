import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballnumber=1;

  @override
  Widget build(BuildContext context) {

   void change(){
     setState(() {
           ballnumber=Random().nextInt(5)+1;
     });
   }

    return MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.blueGrey,

        appBar: AppBar(
          backgroundColor:Colors.blueGrey.shade900 ,
          title: Text('Magic 8 Ball'),
          centerTitle: true,

        ),
        body: Center(
          child: Expanded(
            child: IconButton(onPressed: (){
                change();
            },
              icon: Image.asset('images/ball$ballnumber.png'),
              iconSize: 300,
            ),
          ),

        ),

      ),
    );
  }
}
