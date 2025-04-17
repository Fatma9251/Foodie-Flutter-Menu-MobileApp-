import 'dart:ui';
import 'package:flutter/material.dart';
import 'Foodie_Scr.dart';
import 'itemShow.dart';


class dessert extends StatefulWidget{
  @override
  _dessertState createState() => _dessertState();
}

class _dessertState extends State<dessert> {
  List<Map> desserts =
  [
    {
      'item': 'Cheese Cake',
      'description': 'Strawberries cheese cake, baked',
      'image': 'assets/image/cheesecake.jpg',
      'price': '60'
    },
    {
      'item': 'CupCakes',
      'description': 'Choco CupCakes',
      'image': 'assets/image/cupcakes.jpeg',
      'price': '25'
    },
    {
      'item': 'Ice-Cream',
      'description': 'Bowls Of Ice-Cream Of many Flavours',
      'image': 'assets/image/icecream.jpg',
      'price': '12'
    },
    {
      'item': 'Molten Lava Cake',
      'description': 'Molten Nutella Premium Lava Cake',
      'image': 'assets/image/moltencake.jpg',
      'price': '55'
    }
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
       appBar: PreferredSize(
         preferredSize: Size.fromHeight(70.0),
         child: AppBar(
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
             '  Desserts',
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
         ),
       ),
     body: Container(
       child: ListView(
            children: [
              for(int i = 0 ; i < desserts.length; i++)
                Card(
                  color: Colors.white70,
                  shadowColor: Colors.grey,
                  elevation: 15,
                  shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: ListTile(
                    onTap: (){
                        print("tapped");
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return ItemShow(det: desserts[i]);
                          })
                        );
                    },
                    title: Text(desserts[i]['item'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Text(desserts[i]['description']+" , price: "+desserts[i]['price']+"L.E",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),),
                    /*trailing: InkWell(
                      onTap:(){

                      },
                      child: Icon(Icons.shopping_cart,
                                color: Colors.black,
                                  size: 30
                      ),
                    ),*/
                    leading: CircleAvatar(
                      radius: 90,
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage(desserts[i]['image']),
                     /* child: ClipRRect(
                        borderRadius: BorderRadius.circular(70),
                        child: Image.asset(desserts[i]['image']),
                      ),*/
                    ),
                    trailing: InkWell(
                        onTap: (){
                          print("tapped");
                          showDialog(builder: (BuildContext context) {
                            return AlertDialog(
                              title:  Text(" Order ",
                                  style: TextStyle(
                                    fontSize: 45,//Your "+savory[i]['item']+" is purchased successfully
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  )),
                              content:  Text(" Your "+desserts[i]['item']+" is Ordered successfully ",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  )),
                              actions: <Widget>[
                                TextButton(onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                    child: Container(
                                      color: Colors.green,
                                      padding: const EdgeInsets.all(20),
                                      child: const Text('Okay', style: TextStyle(
                                          color: Colors.white
                                      )),
                                    )
                                )
                              ],
                            );
                          }, context: context

                          );
                        }
                        ,child: Icon(Icons.shopping_cart,
                        color:Colors.black,
                        size: 40)
                    ),

                  )
                )
       ]
       )


     )
   );
  }
}