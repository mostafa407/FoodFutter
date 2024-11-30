import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluapp/naviBottom.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluapp/category.dart';
import 'package:flutter_animate/flutter_animate.dart';

class FoodDetailed extends StatefulWidget {
  @override
  State<FoodDetailed> createState() => FoodDetailedd();
}

class FoodDetailedd extends State<FoodDetailed> {
  String? country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 20,right: 20),
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
                            Hero(
                              tag: "foo",
                              child: Image.asset(
                                "assets/images/k.png",
                              ),
                            ),
                            Positioned(
                                top: 5,
                                right: 5,
                                child: SvgPicture.asset("assets/svg/heart.svg")),
                            Positioned(
                                top: 10,
                                left: 10,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: Colors.white),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30)),
                                  width: 38,
                                  height: 38,
                                  child: Container(
                                      width: 5,
                                      height: 10,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.arrow_back_ios),
                                        color: Color(0xff111719),
                                      )),
                                )),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 140, top: 15),
                          child: Text(
                            "Ground Beef Tacos",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ).animate().scale(delay: Duration(seconds: 5)).fade(duration: 500.ms),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                "(30+)",
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                "See Review",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.redAccent),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.only(right: 85, top: 5),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Text(
                                "9.50",
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17),
                              )),
                              Container(
                                  child: Row(
                                children: [
                                  Icon(
                                    Icons.minimize_outlined,
                                    color: Color(0xffFF3600),
                                  ),
                                  Text("02"),
                                  Icon(
                                    Icons.add_circle,
                                    color: Color(0xffFF3600),
                                  )
                                ],
                              ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,top: 20,right: 20),
              child: Text(
                "Brown the beef better. Lean ground beef – I like to use 85% lean angus. Garlic – use fresh  chopped. Spices – chili powder, cumin, onion powder.",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text("Choice of Add On",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                RadioListTile(

                  title: Text("Pepper  Julienned"),
                  activeColor: Colors.redAccent,
                  controlAffinity: ListTileControlAffinity.trailing,
                  secondary: Icon(Icons.no_food,color: Colors.redAccent,)

                  ,value: "Pepper  Julienned", groupValue: country, onChanged: (value) {
                  setState(() {
                    country=value;
                  });
                },),
                RadioListTile(
                  title: Text("Baby Spinach"),
                  controlAffinity: ListTileControlAffinity.trailing,
                  secondary: Icon(Icons.no_food,color: Colors.teal,)

                  ,value: "Pepper  Julienn", groupValue: country, onChanged: (value) {

                },),
                RadioListTile(
                  title: Text("Masroom"),
                  controlAffinity: ListTileControlAffinity.trailing,
                  secondary: Icon(Icons.no_food,color: Colors.amber,)
                  ,value: "Pepper", groupValue: country, onChanged: (value) {

                },),

              
              ],),),
            Container(
              width: 150,
              margin: EdgeInsets.only( left: 60,right: 60),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFE724C)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return Category(img: "assets/images/r2.png",name: "Burger",);
                    },));
                  },
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/svg/logout.svg")
                      ,Text(style: TextStyle(color: Colors.white),"Log Out",),
                    ],
                  )

              ),
            )
          ],
        ),
      ),
    );
  }
}
