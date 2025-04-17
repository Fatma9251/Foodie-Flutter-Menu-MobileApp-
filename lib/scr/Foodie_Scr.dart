
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Beverage.dart';
import 'Categories.dart';
import 'Savory.dart';
import 'Settings.dart';
import 'desserts.dart';

class Foodie_Scr extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Icon(Icons.menu),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/foodie.jpg')
                  ),
                  color: Colors.white
                )
              ),
              Card(
                color: Colors.white54,
                elevation: 15,
                borderOnForeground: true,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: ListTile(
                  title: Text('Savory',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),),
                    onTap:(){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return Savory();
                      })
                    );
                    }
                ),
              ),
              Card(
                color: Colors.white54,
                elevation: 15,
                borderOnForeground: true,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: ListTile(
                    title: Text('Dessert',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),),
                    onTap:(){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return dessert();
                          })
                      );
                    }
                ),
              ),
              Card(
                color: Colors.white54,
                elevation: 15,
                borderOnForeground: true,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: ListTile(
                    title: Text('Beverages',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),),
                    onTap:(){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return Beverage();
                          })
                      );
                    }
                ),
              ),
              Card(
                color: Colors.white54,
                elevation: 15,
                borderOnForeground: true,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: ListTile(
                    title: Text('Place an Order',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),),
                    onTap:(){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return Categories();
                          })
                      );
                    }
                ),
              ),
              Card(
                color: Colors.white54,
                elevation: 15,
                borderOnForeground: true,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: ListTile(
                    title: Text('Settings',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),),
                    onTap:(){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return Settings();
                          })
                      );
                    }
                ),
              ),

            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 20,
          shadowColor: Colors.grey,
          title: Text('  Foodie',
          style: TextStyle(
            color: Colors.white
           ,fontSize: 50,
            fontWeight: FontWeight.w200,
            fontFamily: 'Paci',


          ),
          ),
        ),
        backgroundColor: Colors.white70,
        body: SingleChildScrollView(
          child: Container(
            height: 750,
            width:1400,
            decoration: BoxDecoration(
            image: DecorationImage(
            image:  AssetImage('assets/image/foodie.jpg'),
            fit: BoxFit.contain,
            )
    )
        )
        )
      );

  }

}