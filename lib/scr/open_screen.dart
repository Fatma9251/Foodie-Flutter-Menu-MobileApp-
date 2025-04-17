import 'dart:ui';
import 'package:flutter/material.dart';
import 'Foodie_Scr.dart';

class OpenScreen extends StatefulWidget
{
  @override
  _OpenScreenState createState() => _OpenScreenState();
}

class _OpenScreenState extends State<OpenScreen> {
    Color _color = Colors.deepOrange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white12,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 700),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Card(
                color: Colors.black,
                elevation: 20,
                borderOnForeground: true,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Text(' Foodie ',
                  style: TextStyle(
                      color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 60
                )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 45,
                  shadowColor: Colors.black,
                  child: ElevatedButton(
                    style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all(_color),
                    ) ,
                    onPressed: () { setState(() {
                      _color = Colors.lightGreen;
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return Foodie_Scr();
                          })
                      );
                    }); },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.add_to_home_screen_rounded,
                        color: Colors.black,
                        size: 55),
                        Text(
                            ' Visit Foodie Now! ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 50
                            )
                        ),
                      ],
                    ),

                  ),
                ),
              )
            ],
          ),


        ),
      )
    );
  }
}