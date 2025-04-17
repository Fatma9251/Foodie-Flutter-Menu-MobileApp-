import 'package:flutter/material.dart';

import 'CreateAccount.dart';
import 'Foodie_Scr.dart';
class Register extends StatefulWidget {
  //const Register({Key? key}) : super(key: key);
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController fname = TextEditingController();

  TextEditingController lname = TextEditingController();

  TextEditingController nemail = TextEditingController();

  TextEditingController npassword = TextEditingController();

  bool _seen = true;

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
        titleSpacing: 1.5,
        title: Text(" Sign Up...",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 40,
            )),
        centerTitle: false,
      ),
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                    controller: fname,
                    decoration: InputDecoration(
                        labelText: 'First Name',
                        labelStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        hintText: 'Enter your first name',
                        hintStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                    controller: lname,
                    decoration: InputDecoration(
                        labelText: 'Last Name',
                        labelStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        hintText: 'Enter your last name',
                        hintStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                    controller: nemail,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        hintText: 'Enter your email address',
                        hintStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: npassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: 'Enter Your Password.',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
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

                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return Create_Account(fname: fname.text,lname: lname.text,
                                  nemail: nemail.text, pass: npassword.text);
                            })
                        );
                      },
                      child: Text("Create account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  )
              )
            ],
          )
      ),
    );
  }
}
