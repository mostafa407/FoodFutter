import 'package:fluapp/switchcustom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluapp/cart.dart';
import 'package:fluapp/faourite.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';

class MyOrder extends StatefulWidget {
  @override
  State<MyOrder> createState() => MyOrderr();
}
class MyOrderr extends State<MyOrder> {
  bool v=false;

  int  value=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My Order")),
        leading: Icon(Icons.arrow_back_ios_new_rounded),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 400,
              child: CupertinoSegmentedControl<int>(
                 borderColor: Colors.black54,
                  selectedColor: Colors.black54,
                  groupValue: value,
                  children: {
                  0: Text('up'),
                  1: Text('down')
                }, onValueChanged: (value) {
                  setState(() {
                    this.value= value;
                  });
                },),
            )

              // CustomSwitch(
              //   value: _enable,
              //   onChanged: (bool val){
              //     setState(() {
              //       _enable = val;
              //
              //     });
              //   },
              // ),

            // Container(
            //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            //   child: SizedBox(
            //       width: 350,
            //       height: 100,
            //       child: FittedBox(
            //         fit: BoxFit.fill,
            //         child: Switch(value: v, onChanged: (value) {
            //             setState(() {
            //               v=value;
            //             });
            //         },),
            //       ),
            //     ),
            //
            //   width: 320,
            //   margin: EdgeInsets.only(top: 30, left: 20),
            //   height: 55,
            // ),
            ,Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              height: 238,
              width: 323,
              child: Card(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(47)),
                            height: 47,
                            width: 47,
                            margin:
                                EdgeInsets.only(right: 250, left: 10, top: 10),
                            child: Image.asset("assets/images/star.png")),
                        Container(
                          margin: EdgeInsets.only(left: 80, top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "3 Items",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                "Starbuck ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 220,top: 20),
                          child: Text(
                            "#264100",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.deepOrange),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 90,left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Text("Estimated Arrival",style: TextStyle(fontSize: 12),),
                          Row(

                            children: [
                            Text("25",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600),)

                             ,Container(margin:EdgeInsets.only(left: 10,top: 15),child: Text("min"))
                          ],)

                        ],),),
                        Container(
                          margin: EdgeInsets.only(top: 120,left: 200),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                          Text("Now",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                          Text("Food on the way",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),)
                        ],),),
                        Container(margin: EdgeInsets.only(top: 170,left: 10),child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Container(
                            width: 135,
                            height: 43,
                            child: ElevatedButton(onPressed: () {

                            }, child: Text("Cancel")),
                          ),
                          Container(
                              width: 135,
                            height: 43,
                            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                    return Fav();
                                  },));
                            }, child: Text("Track Order",style: TextStyle(color: Colors.white),)),
                          )
                        ],),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(margin:EdgeInsets.only(right: 170,top: 10),child: Text("Lasted Orders",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),),
            Container(

              margin: EdgeInsets.only(left: 20, top: 10),
              height: 238,
              width: 323,
              child: Card(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(47)),
                            height: 47,
                            width: 47,
                            margin:
                            EdgeInsets.only(right: 250, left: 10, top: 10),
                            child: Image.asset("assets/images/i.png")),
                        Container(
                          margin: EdgeInsets.only(left: 80, top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "20 Jun, 10:30",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                "Jimmy John’s  ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 220,top: 20),
                          child: Text(
                            "17.10",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.deepOrange),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 90,left: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order Delivered",style: TextStyle(fontSize: 12),),

                            ],),),
                        Container(margin: EdgeInsets.only(top: 170,left: 10),child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 135,
                              height: 43,
                              child: ElevatedButton(onPressed: () {

                              }, child: Text("Rate")),
                            ),
                            Container(
                              width: 135,
                              height: 43,
                              child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                  return Fav();
                                },));
                              }, child: Text("Re-Order",style: TextStyle(color: Colors.white),)),
                            )
                          ],),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(

              margin: EdgeInsets.only(left: 20, top: 10),
              height: 238,
              width: 323,
              child: Card(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(47)),
                            height: 47,
                            width: 47,
                            margin:
                            EdgeInsets.only(right: 250, left: 10, top: 10),
                            child: Image.asset("assets/images/h.png")),
                        Container(
                          margin: EdgeInsets.only(left: 80, top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "19 Jun, 11:50",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                "Subway  ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 220,top: 20),
                          child: Text(
                            "20.50",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.deepOrange),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 90,left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order Delivered",style: TextStyle(fontSize: 12),),

                            ],),),
                        Container(margin: EdgeInsets.only(top: 170,left: 10),child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 135,
                              height: 43,
                              child: ElevatedButton(onPressed: () {

                              }, child: Text("Cancel")),
                            ),
                            Container(
                              width: 135,
                              height: 43,
                              child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                  return Fav();
                                },));
                              }, child: Text("Track Order",style: TextStyle(color: Colors.white),)),
                            )
                          ],),)
                      ],
                    )
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
