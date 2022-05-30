// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/regi2.dart';
import 'package:ui/regi4.dart';
class Regi3 extends StatelessWidget {
  const Regi3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(onPressed: (){
                    Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>Regi2()));
                  },
                      icon: Icon(Icons.arrow_back,color: Colors.black,size: 35,)),),
                SizedBox(height: 50,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.topLeft,
                  //padding: EdgeInsets.only(left: 15),
                  child: Center(
                    child: Text(
                      'Create your Free BDJobs Account',
                      style: TextStyle(
                          color: Color(0xff013E6A),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
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
                        leading: CircleAvatar(
                          maxRadius: 20,
                          backgroundImage: NetworkImage('https://image.freepik.com/free-vector/instagram-icon_1057-2227.jpg'),
                        ),
                        title: Center(
                          child: Text(
                            'Import From Instagram',
                            style: TextStyle(color: Color(0xff707A86)),
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
                        leading: CircleAvatar(
                          maxRadius: 20,
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6EfgPdWenXPKXQ2C8MPHBOSM6TF8o4UH62Q&usqp=CAU'),
                        ),
                        title: Center(
                          child: Text(
                            'Import From WhatsApp',
                            style: TextStyle(color: Color(0xff707A86)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      Divider(
                        color: Colors.black.withOpacity(0.8),
                        thickness: 1,
                        indent: 75,
                        endIndent: 75,),
                      Text('OR',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                      Divider(
                        color: Colors.black.withOpacity(0.8),
                        thickness: 1,
                        indent: 150,
                        endIndent: 150,)
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        onTap: () {},
                        tileColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Enter Your Infromation              ',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                        leading: Icon(
                          Icons.account_circle_rounded,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 2,
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Regi4()));
                      },
                      backgroundColor: Color(0xffFF5353),
                      child: Icon(Icons.arrow_forward),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
