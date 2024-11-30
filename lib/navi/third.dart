import 'package:fluapp/category.dart';
import 'package:fluapp/foodDetailed.dart';
import 'package:flutter/material.dart';
import 'package:fluapp/naviBottom.dart';
import 'package:flutter_svg/svg.dart';
class Third extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(left: 25),
                height: 100,
                width: 230,
                child: Text(
                  "What would you like to order",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
                )),
            Wrap(
              direction: Axis.vertical,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(200)),
                      margin: EdgeInsets.only(left: 20),
                      width: 250,
                      height: 50,
                      child:
                      Card(
                        child: Stack(
                          children: [
                            Positioned(top: 5, left: 5, child: Icon(Icons.search))

                          ],
                        ),

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20,right: 10),
                      child: SvgPicture.asset("assets/svg/p.svg"),),

                  ],
                ),

              ],
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(width: 1)),
              height: 95,
              width: 420,
              // color: Colors.redAccent,
              margin: EdgeInsets.only(left: 25, top: 10),
              child: Wrap(
                direction: Axis.vertical,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 58,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                  return Category(img: "assets/images/r2.png",name: "Burger",);
                                },));
                              },
                              child: Container(

                                width: 55,
                                height: 55,
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(49),
                                  child: Image.asset(
                                    "assets/images/r2.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text("Burger",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11),)
                          ],
                        ),
                        height: 95,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(90),
                            border: Border.all(color: Colors.black26)),
                      ),
                      Container(
                        width: 58,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(49),
                                child: Image.asset(
                                  "assets/images/r3.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text("Donat",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11),)
                          ],
                        ),
                        height: 95,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          // color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(90),
                            border: Border.all(color: Colors.black26)),
                      ),
                      Container(
                        width: 58,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(49),
                                child: Image.asset(
                                  "assets/images/r2.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text("Pizza",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11),)
                          ],
                        ),
                        height: 95,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            // color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(90),
                            border: Border.all(color: Colors.black26)),
                      ),
                      Container(
                        width: 58,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(49),
                                child: Image.asset(
                                  "assets/images/r2.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text("Mexican",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11),)
                          ],
                        ),
                        height: 95,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            // color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(90),
                            border: Border.all(color: Colors.black26)),
                      ),
                      Container(
                        width: 58,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width:55,
                              height: 55,
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(49),
                                child: Image.asset(
                                  "assets/images/r2.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text("Asian",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11),)
                          ],
                        ),
                        height: 95,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            // color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(90),
                            border: Border.all(color: Colors.black26)),
                      ),
                    ],
                  ),

                ],
              ),

            ),
            Container(
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 20,right: 20),
                width: 323,
                height: 300,
                color: Colors.white,
                child: InkWell(
                  onTap: () {

                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return FoodDetailed();
                    },));
                  },
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
                          ),
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

          ],
        ),
      ),

    );
  }
}