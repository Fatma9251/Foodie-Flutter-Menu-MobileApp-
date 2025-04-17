import 'package:flutter/material.dart';
import 'Foodie_Scr.dart';
import 'itemShow.dart';
class Beverage extends StatelessWidget {
  //const Beverage({Key? key}) : super(key: key);
  List<Map> beverages =
  [
    {
      'item': 'Tea',
      'description': 'Red Tea with hint Mint',
      'image': 'assets/image/tea.jpg',
      'price': '15'
    },
    {
      'item': 'Coffee',
      'description': 'Cuppiccino with foam',
      'image': 'assets/image/coffee.png',
      'price': '35'
    },
    {
      'item': 'Orange Juice',
      'description': 'Fresh Orange Juice',
      'image': 'assets/image/ojuice.jpg',
      'price': '25'
    },
    {
      'item': 'Watermelon Juice',
      'description': 'Fresh Watermelon Juice',
      'image': 'assets/image/melonjuice.jpg',
      'price': '25'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            title: Text(
              '  Beverages',
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
            centerTitle: false,
          ),
        ),
        body: Container(
            child: ListView(
                children: [
                  for(int i = 0 ; i < beverages.length; i++)
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
                                  return ItemShow(det: beverages[i]);
                                })
                            );
                          },
                          title: Text(beverages[i]['item'],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),),
                          subtitle: Text(beverages[i]['description']+" , price: "+beverages[i]['price']+"L.E",
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
                                    content:  Text(" Your "+beverages[i]['item']+" is Ordered successfully ",
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
                            radius: 90,
                            backgroundColor: Colors.black,
                            backgroundImage: AssetImage(beverages[i]['image']),
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
