import 'package:flutter/material.dart';
import 'package:fluapp/navi/addAddress.dart';
import 'package:fluapp/review.dart';

class Rat extends StatefulWidget {
  @override
  State<Rat> createState() => Rate();
}

class Rate extends State<Rat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(250)),
                margin: EdgeInsets.only(left: 30, top: 30),
                child: Stack(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(50)),
                        width: 300,
                        child: Image.asset(
                          "assets/images/f2.png",
                          fit: BoxFit.cover,
                        )),
                    Positioned(
                        child: Container(
                      width: 38,
                      height: 38,
                      margin: EdgeInsets.only(top: 10, left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.black,
                        size: 20,
                      ),
                    )),
                    Positioned(
                        child: Container(
                      height: 104,
                      width: 104,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(104),
                          color: Colors.amber),
                      margin: EdgeInsets.only(top: 150, left: 80),
                      child: CircleAvatar(
                        radius: BorderSide.strokeAlignOutside,
                        child: Image.asset("assets/images/m.png"),
                      ),
                    ))
                  ],
                )),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10,bottom: 10)
                    ,child: Text(
                      "Pizza Hut",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                  Container(
                    child: Text(
                      "4102  Pretty View Lanenda",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Order Delivered",
                      style: TextStyle(
                        color: Color(0xff53D776),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Please Rate Delivery Service",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Good",
                      style: TextStyle(
                          color: Color(0xffFE724C),
                          fontWeight: FontWeight.w400,
                          fontSize: 22),
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.brown,
                        ),
                      ],
                    ),
                  ),
                  Container(
        
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Write review",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(300))),
                    ),
                  ),
                  Container(
                    width: 250,
                    
                    height: 60
                    
                    ,margin: EdgeInsets.only(top: 150),child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFE724C)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return Revi();
                        },));
                  }, child: Text("SUBMIT",style: TextStyle(color: Colors.white),)),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
