import'package:flutter/material.dart';
import 'Foodie_Scr.dart';
import 'itemShow.dart';
class Savory extends StatelessWidget {
  //const Savory({Key? key}) : super(key: key);
List<Map> savory =
[
  {
    'item': 'Pizza',
    'description': 'Veggi & meat thin pizza, with tomato sauce',
    'image': 'assets/image/pizza.jpg',
    'price': '100'
  },
  {
    'item': 'Margrita Pizza',
    'description': 'Veggi pizza, with tomato sauce and pasto',
    'image': 'assets/image/margritapizza.jpg',
    'price': '90'
  },
  {
    'item': 'Burger',
    'description': 'Patty Juicy Burger',
    'image': 'assets/image/burgeryes.jpg',
    'price': '85'
  },
  {
    'item': 'Creamy Pasta',
    'description': 'Creamy Cheesy Pasta, White sauce',
    'image': 'assets/image/creamypasta.jpg',
    'price': '65'
  },
  {
    'item': 'MeatBalls Pasta',
    'description': 'MeatBalls Spagethii Pasta, Red sauce',
    'image': 'assets/image/meatballspasta.jpg',
    'price': '75'
  },
  {
    'item': 'Fried Chikcen',
    'description': 'Crispy Spicy Fried Chicken, 3pcs',
    'image': 'assets/image/friedchick.jpg',
    'price': '55'
  },
  {
    'item': 'Fries',
    'description': 'Wedges Crunchy Fries',
    'image': 'assets/image/fries.jpg',
    'price': '15'
  },
  {
    'item': 'Steak',
    'description': 'Meat Fillet Rip-I Steak, Smoked',
    'image': 'assets/image/steak.jpg',
    'price': '155'
  },
  {
    'item': 'Mushroom Soup',
    'description': 'Creamy Mushroom Soup',
    'image': 'assets/image/mushromsoup.jpg',
    'price': '45'
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
            child: Icon(Icons.home,
                color: Colors.white,size:40),
          ),
          title: Text(
            '  Savory',
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
                  for(int i = 0 ; i < savory.length; i++)
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
                                  return ItemShow(det: savory[i]);
                                })
                            );
                          },
                          title: Text(savory[i]['item'],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),),
                          subtitle: Text(savory[i]['description']+" , price: "+savory[i]['price']+"L.E",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),),
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
                                   content:  Text(" Your "+savory[i]['item']+" is Ordered successfully ",
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
                          leading: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.black,
                            backgroundImage: AssetImage(savory[i]['image']),

                            /* child: ClipRRect(
                        borderRadius: BorderRadius.circular(70),
                        child: Image.asset(desserts[i]['image']),
                      ),*/
                          ),

                        )
                    )
                ]
            )


        )
    );
  }
}
