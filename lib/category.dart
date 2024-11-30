import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluapp/foodDetailed.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluapp/cart.dart';


class Category extends StatefulWidget {
     String img;
    String name;
   Category({required this.name,required this.img});


  @override
  State<Category> createState() => Categoryy(this.img,this.name);
}

class Categoryy extends State<Category> {
   String img;
   String name;
  Categoryy(this.img,this.name);
  // late String img;
  // late String name;
  // Categoryy({required String img,required String name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: 500,
                child:
                Stack(
                  children: [
                    Positioned(
                        height: 319,
                        width: 334,
                        top: -90,
                        left: 154,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image(image: AssetImage(img)),
                        )),
                    Positioned(
                        top: 37,
                        left: 27,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(50)),
                          width: 38,
                          height: 38,
                          child: Container(
                              width: 5,
                              height: 10,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                    return Cart();
                                  },));
                                },
                                  icon: Icon(Icons.arrow_back_ios),
                                  color: Color(0xff111719),)),
                        )),
                    Positioned(
                        width: 145,
                        height: 120,
                        top: 112,
                        left: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Fast",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Food",
                                style: TextStyle(
                                    color: Color(0xffFE724C),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 35),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                child: Text(
                                  name,
                                  style: TextStyle(
                                      color: Color(0xff9796A1),
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Short by:"),
                            Text(
                              "Popular",
                              style: TextStyle(color: Colors.deepOrange),
                            ),
                            Container(),
                          ],
                        ),
                        Container(
                          width: 323,
                          height: 300,
                          color: Colors.white,
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.deepOrange,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Image.asset(
                                      "assets/images/f.png",

                                    ),
                                    Positioned(
                                        width: 72,
                                        height: 34,
                                        left: 10,
                                        top: 10,
                                        child: Container(
                                            padding:
                                            EdgeInsets.only(left: 15, top: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(50),
                                              color: Colors.white,
                                            ),
                                            child: Text(
                                              "10.35",
                                              style: TextStyle(fontSize: 18),
                                            ))),
                                    Positioned(
                                        top: 5,
                                        right: 5,
                                        child: SvgPicture.asset(
                                            "assets/svg/heart.svg")),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 140, top: 15),
                                  child: Text(
                                    "Chicken Hawaiian",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container(

                                  child: Text("Chicken, Cheese and pineapple",style: TextStyle(fontSize: 14),),
                                  margin: EdgeInsets.only(right: 85,top: 5),
                                )
                              ],
                            ),
                          ),
                        ),

                        Container(
                          width: 323,
                          height: 300,
                          margin: EdgeInsets.only(top: 10),
                          color: Colors.white,
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.deepOrange,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Image.asset(
                                      "assets/images/f.png",

                                    ),
                                    Positioned(
                                        width: 72,
                                        height: 34,
                                        left: 10,
                                        top: 10,
                                        child: Container(
                                            padding:
                                            EdgeInsets.only(left: 15, top: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(50),
                                              color: Colors.white,
                                            ),
                                            child: Text(
                                              "10.35",
                                              style: TextStyle(fontSize: 18),
                                            ))),
                                    Positioned(
                                        top: 5,
                                        right: 5,
                                        child: SvgPicture.asset(
                                            "assets/svg/heart.svg")),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 140, top: 15),
                                  child: Text(
                                    "Chicken Hawaiian",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container(

                                  child: Text("Chicken, Cheese and pineapple",style: TextStyle(fontSize: 14),),
                                  margin: EdgeInsets.only(right: 85,top: 5),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
