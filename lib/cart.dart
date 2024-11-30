import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluapp/category.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluapp/myOrder.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => Cardd();
}

class Cardd extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_rounded)),
          title: Center(child: Text("Cart")),
        ),
        body: SizedBox(
          child: Column(

            children: [
              Container(
                decoration:
                    BoxDecoration(border: Border.all(style: BorderStyle.none)),
                margin: EdgeInsets.all(10),
                width: 320,
                height: 85,
                child: Row(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        "assets/images/f.png",
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Text(
                                "Red n hot pizza",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )),
                          Expanded(flex: 1, child: Text("Spicy chicken, beef")),
                          Expanded(flex: 1, child: Text("15.30")),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.close,
                                color: Color(0xffFF3600),
                              )),
                          Row(
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
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(style: BorderStyle.none),borderRadius: BorderRadius.circular(50)),
                margin: EdgeInsets.all(10),
                width: 320,
                height: 85,
                child: Row(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        "assets/images/f.png",
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Text(
                                "Red n hot pizza",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )),
                          Expanded(flex: 1, child: Text("Spicy chicken, beef")),
                          Expanded(flex: 1, child: Text("15.30")),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.close,
                                color: Color(0xffFF3600),
                              )),
                          Row(
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
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Positioned(
                        right: 10,
                        top: 10,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange),
                            onPressed: () {},
                            child: Text(
                              "Apply",
                              style: TextStyle(color: Colors.white),
                            ))),
                    Form(
                        child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          hintText: "promo code"),
                    )),
                  ],
                ),
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                    //color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(100)),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,left: 20, right: 20),
                width: 330,
                height: 165,
                child: Column(
                  children: [

                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [

                          Positioned( left: 15,top: 5,child: Text("Subtotal",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                          Positioned(right: 40,top: 5,child: Text("27.30",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 19),)),
                          Positioned(right: 5,top: 5,child: Text("USD",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),)),


                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [

                          Positioned( left: 15,top: 5,child: Text("Tax and Fees",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                          Positioned(right: 40,top: 5,child: Text("5.30",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 19),)),
                          Positioned(right: 5,top: 5,child: Text("USD",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),)),


                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [

                          Positioned( left: 15,top: 5,child: Text("Delivery",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                          Positioned(right: 40,top: 5,child: Text("1.00",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 19),)),
                          Positioned(right: 5,top: 5,child: Text("USD",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),)),


                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [

                          Positioned( left: 15,top: 5,child: Text("Total",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                          Positioned(right: 40,top: 5,child: Text("33.60",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 19),)),
                          Positioned(left: 60,top: 5,child: Text("(2 items)",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),)),

                          Positioned(right: 5,top: 5,child: Text("USD",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),)),


                        ],
                      ),
                    ),


                  ],
                ),
              ),
              Container(

                width: 250,
                margin: EdgeInsets.only(top: 100),
                child: ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return MyOrder();
                },));
              },style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),child:
                Text("CHECKOUT",style: TextStyle(color: Colors.white),),),)
            ],
          ),
        ));
  }
}
