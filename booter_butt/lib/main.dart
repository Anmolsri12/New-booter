import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(

    ),
  ));
}
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _valu = '';
  void _onClick(String value)=> setState(() => _valu =value);
    
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("booter Buttion"),
      ),
      persistentFooterButtons: [
        IconButton(icon: Icon(Icons.people), onPressed: () => _onClick('Buttion 1')),
        IconButton(icon: Icon(Icons.timer), onPressed: () => _onClick('Buttion 2')),
        IconButton(icon: Icon(Icons.calculate), onPressed: () => _onClick('Buttion 3')),
      ],
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text("value")
            ]
            ),
        ),
      ),
    );
  }
}
