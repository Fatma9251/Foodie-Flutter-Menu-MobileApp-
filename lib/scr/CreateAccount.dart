import 'package:flutter/material.dart';

import 'Categories.dart';
import 'Foodie_Scr.dart';
class Create_Account extends StatelessWidget {
  //const Create_Account({Key? key}) : super(key: key);
  String f_name = ' ', l_name = ' ', n_email = ' ', n_pass = ' ';

  Create_Account({String fname: 'First_name', String lname: 'Last_name',
    String nemail: 'Email Address', String pass: 'PassWord'}){
    this.f_name = fname;
    this.l_name = lname;
    this.n_email= nemail;
    this.n_pass = pass;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
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
          titleSpacing: 1.5,
          title: Text(" You're A Foodie Now ",
              style: TextStyle(
                color: Colors.white54,
                fontWeight: FontWeight.w800,
                fontSize: 40,
              )),
          centerTitle: true,
        ),

      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment : MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children:[
                  SizedBox(
                      height: 150
                  ),
                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    child: Text("Welcome, "+f_name+" "+l_name,
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            backgroundColor: Colors.deepOrange
                        )),
                  ),
                  SizedBox(
                      height: 30
                  ),
                  Text("First Name: "+f_name,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  SizedBox(
                      height: 8
                  ),
                  Text("Last Name: "+l_name,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  SizedBox(
                      height: 8
                  ),
                  Text("Email Address: "+n_email,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  SizedBox(
                      height: 8
                  ),
                  Text("PassWord: "+n_pass,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  SizedBox(
                      height: 8
                  ),
                  Card(
                    elevation: 20,
                    shadowColor: Colors.deepOrange,
                    child: ElevatedButton(onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return Categories();
                          })
                      );
                    },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black),
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
                          Text("Start Your Food Journey",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold
                            ),),
                        ],
                      ),

                    ),
                  ),
                  SizedBox(
                      height: 20
                  ),
                ]
            ),
          )
      ),
    );
  }
}
