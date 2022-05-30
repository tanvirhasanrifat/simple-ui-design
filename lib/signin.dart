// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/job1.dart';
import 'package:ui/regi1.dart';

class Signin extends StatefulWidget {
  const Signin({ Key? key }) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 10),
            child: Expanded(
              flex: 5,
              child: Container(

                child: Column(

                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: IconButton(onPressed: (){
                        Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>Job1()));
                      },
                          icon: Icon(Icons.arrow_back,color: Colors.black,size: 35,)),),
                    SizedBox(height: 20,),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.topLeft,

                        child: Text('Sign In',
                          style: TextStyle(
                              color: Color(0xff013E6A),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),)
                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                                hintText: 'UserName, Email or PhoneNumber',

                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.black.withOpacity(0.3))
                                )
                            ),

                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: (){},
                              child: Text('Forget username ?',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.4)),),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Text('Sign in with Social',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.5)),),
                    SizedBox(height: 15,),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        InkWell(
                            onTap: (){},
                            child: CircleAvatar(
                              maxRadius: 22,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2rineaT_eTVx_wc3H3nBKiuL02eCCqhLBEqhJm4CpXHnt40LlX9-R0q5dbLP9gCwDKpA&usqp=CAU'),
                            )
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                            onTap: (){},
                            child: CircleAvatar(
                                maxRadius: 22,
                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6EfgPdWenXPKXQ2C8MPHBOSM6TF8o4UH62Q&usqp=CAU'))
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                            onTap: (){},
                            child: CircleAvatar(
                                maxRadius: 22,
                                backgroundImage: NetworkImage('https://image.freepik.com/free-vector/instagram-icon_1057-2227.jpg'))
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text("Don't have any account ?",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.5)),),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: (){},
                      child: Text('Create Account',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                            color: Color(0xff0C3352)),),
                    ),
                    SizedBox(height: 50,),
                    Expanded(
                        flex: 1,
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Image.asset(
                                'images/ui1.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Positioned(
                              bottom: 35,
                              right: 35,
                              child: FloatingActionButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Regi1()));
                                },
                                backgroundColor: Color(0xffFF5353),
                                child: Icon(Icons.arrow_forward),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}