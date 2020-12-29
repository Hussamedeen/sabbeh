import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int counter=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'سبح باسم ربك الأعلى',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: 'MarkaziText',
                fontSize: 22.0,
              ),
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.teal[900],
            actions: [
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.info_rounded,
                  color: Colors.white,
                )
              )
            ],

          ),
          body: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/sabbehbackground.png'),
                    fit: BoxFit.fill
                  )
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                  height: 50.0,
                    width: double.infinity,
                    color: Colors.teal[700],
                    padding: EdgeInsetsDirectional.only(
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: Text(
                              'مسبحتي',
                              style: TextStyle(
                                fontSize: 23.0,
                                color: Colors.white,
                                fontWeight:FontWeight.w600,
                                fontFamily: 'MarkaziText',
                              ),
                    //  textAlign: TextAlign.center,
                            ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Card(
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(20.0),
                  //     ),
                  //     color: Colors.teal[900],
                  //     child: Padding(
                  //       padding: const EdgeInsetsDirectional.only(start: 70.0,end: 70.0,top: 10.0,bottom: 10.0),
                  //       child: Text(
                  //         'مسبحتي',
                  //         style: TextStyle(
                  //           fontSize: 23.0,
                  //           color: Colors.white,
                  //           fontWeight:FontWeight.w600,
                  //           fontFamily: 'MarkaziText',
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 20.0,
                  // ),
                  // RaisedButton(
                  //   onPressed: (){},
                  //   child: CircleAvatar(
                  //     radius: 100.0,
                  //     backgroundColor: Colors.teal[700],
                  //     child: Text(
                  //       'عداد',
                  //       style: TextStyle(
                  //         fontSize: 40.0,
                  //         fontWeight: FontWeight.bold,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      setState(() {
                        ++counter;
                      });


                    },
                    child: Container(
                 alignment: Alignment.center,
                      height: 250.0,
                      width: 250.0,
                      child: Text(
                        'العداد',
                        //textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60.0,
                          color: Colors.white,
                          fontFamily: 'adobearabic',
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.teal[700],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Container(
                  height: 80.0,
                    margin: EdgeInsetsDirectional.only(
                      start: 20.0,
                      end: 20.0,
                      top: 20.0,
                    ),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.16),
                          offset: Offset(0,3),
                          blurRadius: 6,
                          spreadRadius: 6.0,

                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'أكتب الذكر هنا',
                      style: TextStyle(
                        fontFamily: 'MarkaziText',
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,

                      ),
                    ),

                  ),
                  Container(
                    width: double.infinity,
                    height: 70.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.teal[700],
                      borderRadius: BorderRadiusDirectional.all(
                       Radius.circular(20.0),
                      ),
                    ),
                    margin: EdgeInsetsDirectional.only(
                      start: 40.0,
                      end: 40.0,
                      top: 20.0,
                      bottom: 20.0,
                    ),
                    // child: RaisedButton(
                    //   onPressed: (){},
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(10.0),
                    //   ),
                    //   color: Colors.teal[700],
                      child: Text(
                        '$counter',
                        style: TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'adobearabic',
                          color: Colors.white,
                        ),
                      ),
                  //  ),
                  ),
                  RaisedButton.icon(
                    onPressed: (){
                      setState(() {
                        counter=0;
                      });
                    },
                    icon: Icon(
                      Icons.restore,
                    ),
                    label: Text(
                      'إعادة ترقيم',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'adobearabic',
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'تطبيق سَبّح 2020',
                    style: TextStyle(
                      fontFamily: 'adobearabic',
                      fontSize: 20.0,
                      color: Colors.teal[900],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                ],
              ),
            ],
          ),

        ),
      ),
    );
  }
}


