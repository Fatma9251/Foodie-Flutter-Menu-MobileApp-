import'package:flutter/material.dart';
import 'Categories.dart';
import 'Foodie_Scr.dart';
class Logged extends StatelessWidget {
 // const Logged({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Colors.black,
        elevation: 20,
        shadowColor: Colors.grey,
        title: Text('  Logged Successfully  ',
          style: TextStyle(
            color: Colors.white
            ,fontSize: 50,
            fontWeight: FontWeight.w200,
            fontFamily: 'Paci',


          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white70,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Card(
            elevation: 20,
            shadowColor: Colors.black,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return Categories();
                        })
                    );
                  },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white54),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.chevron_right_rounded,
                            color: Colors.black),
                        SizedBox(
                            width:8
                        ),
                        Text("Start Your Journey As A FOODIE",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),

                  ),
                ],
              ),
            )

        ),
        ]
      ),

    );
  }
}
