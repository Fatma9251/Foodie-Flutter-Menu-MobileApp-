import 'package:flutter/material.dart';

import 'Foodie_Scr.dart';
class ItemShow extends StatelessWidget {
  //const ItemShow({Key? key}) : super(key: key);
  Map details = {'item': ' ', 'description':' ', 'image':' ', 'price': ' '};
  ItemShow({Map det}){
   this.details = det;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 20,
        shadowColor: Colors.grey,
        title: Text(details['item'],
          style: TextStyle(
            color: Colors.white
            ,fontSize: 50,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(details['image'])
              ,SizedBox(
                height: 50
              ),
              Text(details['item'],
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),)
            ,SizedBox(
            height: 20
                ),
              Text(details['description'],
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  height: 20
                    ),
                 Text(" price: "+details['price']+" L.E",
                    style: TextStyle(
                   color: Colors.black,
                  fontSize: 50,
                fontWeight: FontWeight.bold,
                   ),),
            ],

          ),
        ),
      )
    );
  }
}
