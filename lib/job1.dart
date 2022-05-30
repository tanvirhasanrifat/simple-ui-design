// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ui/signin.dart';

class Job1 extends StatelessWidget {
  const Job1({Key? key}) : super(key: key);

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
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(right: 15, top: 10),
                    child: Icon(
                      Icons.account_circle_rounded,
                      size: 40,
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.topLeft,
                  //padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Search Job',
                    style: TextStyle(
                        color: Color(0xff013E6A),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
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

                        title: Text(
                          'Job Title',
                          style: TextStyle(color: Color(0xff707A86)),
                        ),
                        //shape: Border(bottom: BorderSide(color: Colors.black)),
                        trailing: Icon(Icons.arrow_drop_down,
                            color: Color(0xff707A86)),
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
                        title: Text(
                          'Location',
                          style: TextStyle(color: Color(0xff707A86)),
                        ),
                        //shape: Border(bottom: BorderSide(color: Colors.black)),
                        trailing: Icon(Icons.arrow_drop_down,
                            color: Color(0xff707A86)),
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
                        title: Text(
                          'Job Title',
                          style: TextStyle(color: Color(0xff707A86)),
                        ),
                        //shape: Border(bottom: BorderSide(color: Colors.black)),
                        trailing: Icon(Icons.arrow_drop_down,
                            color: Color(0xff707A86)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        onTap: () {},
                        tileColor: Color(0xff00406C),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Search                 ',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                        leading: Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        onTap: (){},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Color(0xff707A86))),
                        selected: true,

                        tileColor: Colors.black45,
                        title: Center(
                            child: Text(
                              'View New Jobs                 ',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xffB2B2B2),
                                  fontWeight: FontWeight.bold),
                            )),
                        //shape: Border(bottom: BorderSide(color: Colors.black)),
                        leading: Icon(
                          Icons.work_outlined,
                          color: Color(0xffFF5353),
                        ),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signin()));
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
