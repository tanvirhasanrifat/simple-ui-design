// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ui/regi4.dart';
class Regi5 extends StatefulWidget {
  const Regi5({ Key? key }) : super(key: key);

  @override
  State<Regi5> createState() => _Regi5State();
}

class _Regi5State extends State<Regi5> {
  int selected = 0;

  Widget customRadio(String text, int index){
    return OutlinedButton(onPressed: (){
      setState((){
        selected = index;
      });
    },
      child: Text(text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: (selected == index) ? Colors.blue.shade400 : Colors.black,
        ),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(onPressed: (){
                    Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>Regi4()));
                  },
                      icon: Icon(Icons.arrow_back,color: Colors.black,size: 35,)),
                ),
                SizedBox(height: 50,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.topLeft,
                  child: Text('Select Gender',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                ),
                SizedBox(height: 17,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      Row(

                        children: [
                          Icon(Icons.pregnant_woman,size: 30,color: Colors.black,),

                          SizedBox(width: 5,),
                          Expanded(
                            flex: 2,
                            child: customRadio("Female", 1),
                          ),
                        ],),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.accessibility_rounded,size: 30,color: Colors.black,),

                          SizedBox(width: 5,),
                          Expanded(
                            flex: 2,
                            child: customRadio("Male", 2),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.directions_bike_outlined,size: 30,color: Colors.black,),

                          SizedBox(width: 5,),
                          Expanded(
                            flex: 2,
                            child: customRadio("Others", 3),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 200,),
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
                            onPressed: () {},
                            backgroundColor: Color(0xffFF5353),
                            child: Icon(Icons.arrow_forward),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),

    );
  }
}