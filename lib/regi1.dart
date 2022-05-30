// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/regi2.dart';
import 'package:ui/signin.dart';
class Regi1 extends StatelessWidget {
  const Regi1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Column(
          children: [
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 10),
              child: Expanded(
                flex: 6,
                child: Container(

                  child: Column(

                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: IconButton(onPressed: (){
                          Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>Signin()));
                        },
                            icon: Icon(Icons.arrow_back,color: Colors.black,size: 35,)),),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.topLeft,

                        child: Text('Registration',
                          style: TextStyle(
                              color: Color(0xff013E6A),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 20,),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.topLeft,
                        child: Text('Please choose your relevant type',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff013E6A),
                          ),),
                      ),
                      SizedBox(height: 20,),
                      Card(

                          elevation: 15,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30,),
                              bottomRight: Radius.circular(30))),
                          color: Colors.white,
                          margin: EdgeInsets.symmetric(horizontal: 10),

                          child: Row(

                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Expanded(

                                flex: 1,
                                child: Container(
                                    height: 100,
                                    color: Color(0xffF44236),
                                    child: Icon(Icons.streetview,size: 60,color: Colors.white,)),),
                              Expanded(
                                flex: 3,
                                child: Container(

                                    child: Column(
                                        children: [
                                          Container( child: Text('Functional Category',
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red,
                                            ),)),
                                          SizedBox(height: 5,),
                                          Container(child: Text('Finance, Media / Advertisment',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black.withOpacity(0.5)
                                            ),),)
                                        ])

                                ),)
                            ],
                          )

                      ),
                      SizedBox(height: 20,),
                      Card(

                          elevation: 15,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30,),
                              bottomRight: Radius.circular(30))),
                          color: Colors.white,
                          margin: EdgeInsets.symmetric(horizontal: 10),

                          child: Row(

                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Expanded(

                                flex: 1,
                                child: Container(
                                    height: 100,
                                    color: Color(0xff003866),
                                    child: Icon(Icons.work_outlined,size: 60,color: Colors.white,)),),
                              Expanded(
                                flex: 3,
                                child: Container(

                                    child: Column(
                                        children: [
                                          Container( child: Text('Special Skilled Category',
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue.shade900,
                                            ),)),
                                          SizedBox(height: 5,),
                                          Container(child: Text('Finance, Media / Advertisment',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black.withOpacity(0.5)
                                            ),),)
                                        ])

                                ),)
                            ],
                          )

                      ),
                      SizedBox(height: 30,),
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
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Regi2()));
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

            ),
          ],


        ));
  }
}