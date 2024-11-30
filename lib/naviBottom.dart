import 'dart:io';

import 'package:fluapp/navi/first.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluapp/navi/first.dart';
import 'package:fluapp/navi/second.dart';
import 'package:fluapp/navi/third.dart';
import 'package:fluapp/navi/addAddress.dart';
import 'package:fluapp/navi/five.dat.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluapp/foodDetailed.dart';
import 'package:fluapp/category.dart';

class Navi extends StatefulWidget {
  String? img;
  String? name;
  @override
  State<Navi> createState() => Navii(img: '', name: '');
}

class Navii extends State<Navi> {
  String? img;
  String? name;
  Navii({required String img,required  String name});
  int select = 1;
  List<Widget> list = [First(), Second(), Third(), Fourth(), Five()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.white30.withOpacity(0.1),
      drawer: Drawer(
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25, top: 25),
                  alignment: Alignment.topLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: Image(
                      width: 90,
                      height: 90,
                      image: AssetImage("assets/images/profie_image.png"),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 147, left: 26),
                  width: 120,
                  height: 20,
                  child: Text(
                    "Farion Wick",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  width: 171,
                  margin: EdgeInsets.only(top: 171, left: 26),
                  child: Text(
                      style: TextStyle(fontSize: 14), "farionwick@gmail.com"),
                ),
                Container(
                  margin: EdgeInsets.only(top: 234, left: 20),
                  width: 162,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/Document.svg",
                      ),
                      Text("My Orders")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 290, left: 20),
                  width: 162,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/Profile.svg",
                      ),
                      Text("My Profile")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 346, left: 35),
                  width: 162,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/Wallet.svg",
                      ),
                      Text("Delivery Address")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 402, left: 38),
                  width: 162,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/Location.svg",
                      ),
                      Text("Payment Methods")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 458, left: 25),
                  width: 162,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/Message.svg",
                      ),
                      Text("Contact Us")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 511, left: 20),
                  width: 162,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/Setting.svg",
                      ),
                      Text("Settings")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 568, left: 33),
                  width: 162,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //SvgPicture.asset("assets/svg/Location.svg",height: 20,width: 20,fit: BoxFit.scaleDown,)
                      SvgPicture.asset("assets/svg/Helps.svg"),
                      Text("Helps & FAQs")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 650, left: 60, right: 60),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFE724C)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return FoodDetailed();
                          },
                        ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset("assets/svg/logout.svg"),
                          Text(
                            style: TextStyle(color: Colors.white),
                            "Log Out",
                          ),
                        ],
                      )),
                )
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Center(child: Text("4102  Pretty View Lane ")),
        leading: SvgPicture.asset(
          "assets/svg/choose.svg",
          width: 30,
          height: 30,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              child: Image.asset("assets/images/profie_image.png"),
              borderRadius: BorderRadius.circular(10),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: select,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.white,

          selectedFontSize: 20,
          unselectedFontSize: 14,
          onTap: (value) {
            setState(() {
              select = value;

            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                  color: Colors.deepOrange,
                ),
                label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.not_listed_location_sharp), label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_rounded,
                  color: Colors.deepOrange,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.heart_broken), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.alarm), label: ""),
          ]),
      body:
        list.elementAt(select)
      // SingleChildScrollView(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       Container(
      //           margin: EdgeInsets.only(left: 25),
      //           height: 100,
      //           width: 230,
      //           child: Text(
      //             "What would you like to order",
      //             style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
      //           )),
      //       Wrap(
      //         direction: Axis.vertical,
      //         children: [
      //         Row(
      //           children: [
      //             Container(
      //               decoration: BoxDecoration(borderRadius: BorderRadius.circular(200)),
      //               margin: EdgeInsets.only(left: 20),
      //               width: 250,
      //               height: 50,
      //               child:
      //               Card(
      //                 child: Stack(
      //                   children: [
      //                     Positioned(top: 5, left: 5, child: Icon(Icons.search))
      //  
      //                   ],
      //                 ),
      //  
      //               ),
      //             ),
      //             Container(
      //               margin: EdgeInsets.only(top: 20,right: 10),
      //               child: SvgPicture.asset("assets/svg/p.svg"),),
      //  
      //           ],
      //         ),
      //  
      //       ],
      //       ),
      //       Container(
      //         decoration: BoxDecoration(border: Border.all(width: 1)),
      //         height: 95,
      //         width: 420,
      //         // color: Colors.redAccent,
      //         margin: EdgeInsets.only(left: 25, top: 10),
      //         child: Wrap(
      //           direction: Axis.vertical,
      //           children: [
      //             Row(
      //               children: [
      //                 Container(
      //                   width: 58,
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                     crossAxisAlignment: CrossAxisAlignment.center,
      //                     children: [
      //                       InkWell(
      //                         onTap: () {
      //                           Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      //                             return Category();
      //                           },));
      //                         },
      //                         child: Container(
      //  
      //                           width: 49,
      //                           height: 49,
      //                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
      //                           child: Image.asset(
      //                             "assets/images/r2.png",
      //                             fit: BoxFit.cover,
      //                           ),
      //                         ),
      //                       ),
      //                       Text("Burger",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11),)
      //                     ],
      //                   ),
      //                   height: 95,
      //                   margin: EdgeInsets.only(left: 10),
      //                   decoration: BoxDecoration(
      //                       color: Colors.redAccent,
      //                       borderRadius: BorderRadius.circular(90)),
      //                 ),
      //                 Container(
      //                   width: 58,
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                     crossAxisAlignment: CrossAxisAlignment.center,
      //                     children: [
      //                       Container(
      //                         width: 49,
      //                         height: 49,
      //                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
      //                         child: Image.asset(
      //                           "assets/images/r3.png",
      //                           fit: BoxFit.cover,
      //                         ),
      //                       ),
      //                       Text("Donat",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11),)
      //                     ],
      //                   ),
      //                   height: 95,
      //                   margin: EdgeInsets.only(left: 10),
      //                   decoration: BoxDecoration(
      //                       // color: Colors.redAccent,
      //                       borderRadius: BorderRadius.circular(90)),
      //                 ),
      //                 Container(
      //                   width: 58,
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                     crossAxisAlignment: CrossAxisAlignment.center,
      //                     children: [
      //                       Container(
      //                         width: 49,
      //                         height: 49,
      //                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
      //                         child: Image.asset(
      //                           "assets/images/r2.png",
      //                           fit: BoxFit.cover,
      //                         ),
      //                       ),
      //                       Text("Pizza",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11),)
      //                     ],
      //                   ),
      //                   height: 95,
      //                   margin: EdgeInsets.only(left: 10),
      //                   decoration: BoxDecoration(
      //                       color: Colors.redAccent,
      //                       borderRadius: BorderRadius.circular(90)),
      //                 ),
      //                 Container(
      //                   width: 58,
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                     crossAxisAlignment: CrossAxisAlignment.center,
      //                     children: [
      //                       Container(
      //                         width: 49,
      //                         height: 49,
      //                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
      //                         child: Image.asset(
      //                           "assets/images/r2.png",
      //                           fit: BoxFit.cover,
      //                         ),
      //                       ),
      //                       Text("Mexican",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11),)
      //                     ],
      //                   ),
      //                   height: 95,
      //                   margin: EdgeInsets.only(left: 10),
      //                   decoration: BoxDecoration(
      //                       color: Colors.redAccent,
      //                       borderRadius: BorderRadius.circular(90)),
      //                 ),
      //                 Container(
      //                   width: 58,
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                     crossAxisAlignment: CrossAxisAlignment.center,
      //                     children: [
      //                       Container(
      //                         width: 49,
      //                         height: 49,
      //                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
      //                         child: Image.asset(
      //                           "assets/images/r2.png",
      //                           fit: BoxFit.cover,
      //                         ),
      //                       ),
      //                       Text("Asian",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11),)
      //                     ],
      //                   ),
      //                   height: 95,
      //                   margin: EdgeInsets.only(left: 10),
      //                   decoration: BoxDecoration(
      //                       color: Colors.redAccent,
      //                       borderRadius: BorderRadius.circular(90)),
      //                 ),
      //               ],
      //             ),
      //  
      //           ],
      //         ),
      //  
      //       ),
      //       Container(
      //         child: Container(
      //           margin: EdgeInsets.only(top: 20, left: 20,right: 20),
      //           width: 323,
      //           height: 300,
      //           color: Colors.white,
      //           child: InkWell(
      //             onTap: () {
      //  
      //               Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      //                 return FoodDetailed();
      //               },));
      //             },
      //             child: Card(
      //               elevation: 10,
      //               shadowColor: Colors.deepOrange,
      //               child: Column(
      //                 children: [
      //                   Stack(
      //                     children: [
      //                       Hero(
      //                         tag: "foo",
      //                         child: Image.asset(
      //                           "assets/images/k.png",
      //                         ),
      //                       ),
      //                       Positioned(
      //                           top: 5,
      //                           right: 5,
      //                           child: SvgPicture.asset("assets/svg/heart.svg")),
      //                       Positioned(
      //                           top: 10,
      //                           left: 10,
      //                           child: Container(
      //                             margin: EdgeInsets.only(bottom: 20),
      //                             decoration: BoxDecoration(
      //                                 border: Border.all(
      //                                     width: 2, color: Colors.white),
      //                                 color: Colors.white,
      //                                 borderRadius: BorderRadius.circular(30)),
      //                             width: 38,
      //                             height: 38,
      //                             child: Container(
      //                                 width: 5,
      //                                 height: 10,
      //                                 child: IconButton(
      //                                   onPressed: () {},
      //                                   icon: Icon(Icons.arrow_back_ios),
      //                                   color: Color(0xff111719),
      //                                 )),
      //                           )),
      //                     ],
      //                   ),
      //                   Container(
      //                     margin: EdgeInsets.only(right: 140, top: 15),
      //                     child: Text(
      //                       "Ground Beef Tacos",
      //                       style: TextStyle(
      //                           fontSize: 18, fontWeight: FontWeight.w600),
      //                     ),
      //                   ),
      //                   Container(
      //                     child: Row(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //                       children: [
      //                         Icon(
      //                           Icons.star,
      //                           color: Colors.amber,
      //                         ),
      //                         Text(
      //                           "4.5",
      //                           style: TextStyle(fontSize: 14),
      //                         ),
      //                         Text(
      //                           "(30+)",
      //                           style: TextStyle(fontSize: 14),
      //                         ),
      //                         Text(
      //                           "See Review",
      //                           style: TextStyle(
      //                               fontSize: 14, color: Colors.redAccent),
      //                         ),
      //                       ],
      //                     ),
      //                     margin: EdgeInsets.only(right: 85, top: 5),
      //                   ),
      //                   Container(
      //                     child: Row(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                       children: [
      //                         Container(
      //                             child: Text(
      //                               "9.50",
      //                               style: TextStyle(
      //                                   color: Colors.redAccent,
      //                                   fontWeight: FontWeight.w400,
      //                                   fontSize: 17),
      //                             )),
      //                         Container(
      //                             child: Row(
      //                               children: [
      //                                 Icon(
      //                                   Icons.minimize_outlined,
      //                                   color: Color(0xffFF3600),
      //                                 ),
      //                                 Text("02"),
      //                                 Icon(
      //                                   Icons.add_circle,
      //                                   color: Color(0xffFF3600),
      //                                 )
      //                               ],
      //                             ))
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //  
      //     ],
      //   ),
      // ),
    );
  }
}
