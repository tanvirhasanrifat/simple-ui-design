// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/regi1.dart';
import 'package:ui/regi3.dart';
class Regi2 extends StatelessWidget {
  const Regi2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(onPressed: (){
                    Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>Regi1()));
                  },
                      icon: Icon(Icons.arrow_back,color: Colors.black,size: 35,)),),
                SizedBox(height: 50,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Select Skills from the list',
                    style: TextStyle(
                        color: Color(0xff013E6A),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Color(0xff707A86))),
                        selected: true,

                        tileColor: Colors.black45,
                        title: Center(
                          child: Text(
                            'Accounting / Finance',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff00305A)),
                          ),
                        ),

                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Color(0xff707A86))),
                        selected: true,

                        tileColor: Colors.black45,
                        title: Center(
                          child: Text(
                            'Media / Advertisement / Event Mgt.',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff00305A)),
                          ),
                        ),

                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Color(0xff707A86))),
                        selected: true,

                        tileColor: Colors.black45,
                        title: Center(
                          child: Text(
                            'Media / Pharma',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff00305A)),                        ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Color(0xff707A86))),
                        selected: true,

                        tileColor: Colors.black45,
                        title: Center(
                          child: Text(
                            'NGO / Development',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff00305A)),
                          ),
                        ),

                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Color(0xff707A86))),
                        selected: true,

                        tileColor: Colors.black45,
                        title: Center(
                          child: Text(
                            'Research / Consultancy',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff00305A)),
                          ),
                        ),

                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Color(0xff707A86))),
                        selected: true,

                        tileColor: Colors.black45,
                        title: Center(
                          child: Text(
                            'Secratary / Receptionist',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff00305A)),
                          ),
                        ),

                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
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
                    bottom: 30,
                    right: 30,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Regi3()));
                      },

                      backgroundColor: Color(0xffFF5353),
                      child: Icon(Icons.arrow_forward,),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
