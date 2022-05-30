// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ui/regi3.dart';
import 'package:ui/regi5.dart';
class Regi4 extends StatefulWidget {
  const Regi4({ Key? key }) : super(key: key);

  @override
  State<Regi4> createState() => _Regi4State();
}

class _Regi4State extends State<Regi4> {
  TextEditingController userController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 10),
            child: Expanded(
              flex: 8,
              child: Container(

                child: Column(

                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: IconButton(onPressed: (){
                        Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>Regi3()));
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
                            fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.topLeft,

                      child: Text('Write Name',
                        style: TextStyle(
                            color: Color(0xff013E6A),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          TextField(
                            controller: userController,
                            decoration: InputDecoration(
                                hintText: 'UserName',

                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.black.withOpacity(0.3))
                                )
                            ),

                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 250,),
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
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Regi5()));
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