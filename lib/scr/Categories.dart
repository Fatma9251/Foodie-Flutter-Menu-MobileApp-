import 'package:flutter/material.dart';
import 'Beverage.dart';
import 'Foodie_Scr.dart';
import 'Savory.dart';
import 'Settings.dart';
import 'desserts.dart';
import 'open_screen.dart';
class Categories extends StatelessWidget {
  //const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            leading: InkWell(
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return Foodie_Scr();
                    })
                );
              },
              child: Icon(Icons.home,size:40,
                  color: Colors.white),
            ),
            title: Text(
              '  Categories',
              style: TextStyle(
                color: Colors.white
                ,fontSize: 35,
                fontWeight: FontWeight.w200,
                fontFamily: 'Paci',
              ),
            ),
            backgroundColor: Colors.black,
            elevation: 20,
            shadowColor: Colors.grey,
            centerTitle: false,
            bottom: TabBar(
              tabs: [
                Icon(Icons.restaurant,
                size: 30,
                color: Colors.white70),
                Icon(Icons.cake_rounded,
                    size: 30,
                    color: Colors.white70),
                Icon(Icons.emoji_food_beverage_rounded,
                    size: 30,
                    color: Colors.white70),
                Icon(Icons.logout,
                    size: 30,
                    color: Colors.white70),
              ],
            ),

            ),
        body: TabBarView(
          children: [
            Savory(),
            dessert(),
            Beverage(),
            Settings()
          ],

        )
          ),
    );


  }
}
