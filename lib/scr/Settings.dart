import 'package:flutter/material.dart';

import 'Foodie_Scr.dart';
import 'Register.dart';
import 'logged_in.dart';
class Settings extends StatefulWidget
{
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextEditingController email= TextEditingController();

  TextEditingController password= TextEditingController();

  TextEditingController username= TextEditingController();

  String e = ' ';

  bool _seen = true;

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
                  color: Colors.white,
              size:40),
            ),
            title: Text(
              '  Settings',
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
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment : MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:
                [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                        cursorColor: Colors.blueGrey,
                        controller: username,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          hintText: 'Enter Your Username.',
                          hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          prefixIcon: Icon(Icons.person),

                        ),
                        obscureText: false,  // whether to make the text visible or not
                        onChanged: (e){
                          print(e);
                        }

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                        cursorColor: Colors.blueGrey,
                        controller: email,
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            hintText: 'Enter Your Email Address.',
                            hintStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            prefixIcon: Icon(Icons.alternate_email_rounded),
                            suffixIcon: Icon(Icons.email)
                        ),
                        obscureText: false,  // whether to make the text visible or not
                        onChanged: (e){
                          print(e);
                        }

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      cursorColor: Colors.blueGrey,
                        controller: password,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          hintText: 'Enter Your Password.',
                          hintStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          prefixIcon: Icon(Icons.account_circle_sharp),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye_rounded),
                            onPressed: (){
                              setState(() {
                                _seen = !_seen;
                              });
                            },
                          ),
                        ),
                        obscureText: _seen,  // whether to make the text visible or not
                        onSaved: (e){
                          print(email.text);
                        }

                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    elevation: 15,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return Logged();
                            })
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.person,
                              size: 25,
                              color: Colors.black),
                          SizedBox(
                              width: 20
                          ),
                          Text("Login",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),),
                          SizedBox(
                              width: 10
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("You haven't registered as a Foodie yet?! ",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                          width: 30
                      ),
                      Card(
                          shadowColor: Colors.grey,
                          elevation: 15,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (BuildContext context) {
                                      return Register();
                                    })
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                              ) ,
                              child: Row(
                                  children: [
                                    Text("Register",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    SizedBox(
                                        width: 10
                                    ),
                                    Icon(Icons.add_to_home_screen,
                                        size: 25,
                                        color: Colors.white70),
                                  ]
                              )
                          )
                      ),
                    ],
                  )
                ]
            ),
          )

      )
    );
  }
}