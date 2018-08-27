import 'package:catbox/ui/cat_list.dart';
import 'package:flutter/material.dart';


void main() async {
  runApp(new CatBox());
}

class CatBox extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      theme: new ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.pinkAccent,
        fontFamily: 'Jua',
      ),
      home: new CatList(),
    );
      
  }
}

