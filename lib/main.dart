import 'package:flutter/material.dart';
import 'package:foodie/scr/open_screen.dart';
main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false ,
    theme: ThemeData(
      fontFamily: 'Paci',
     // primaryColor: Colors.white70,
    ),
    home: OpenScreen()
  ));
}
