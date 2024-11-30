import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluapp/rating.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluapp/reviewResturant.dart';

class Revi extends StatefulWidget {
  @override
  State<Revi> createState() => Reviw();
}

class Reviw extends State<Revi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reviews"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 325,
              height: 51,
              margin: EdgeInsets.only(),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black26)]),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      "assets/images/profie_image.png",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 50,
                    width: 200,
                    child: TextFormField(
                      decoration:
                          InputDecoration(hintText: "Write your review..."),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 600,
              width: 400,
              color: Colors.white,
              margin: EdgeInsets.only(top: 10, right: 20, left: 20),
              child: SingleChildScrollView(
                child: Expanded(
                    flex: 3,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        children: <Widget>[
                          Expanded(child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Container(
                                width: 323,
                                height: 250,
                                child: Card(
                                  elevation: 10,
                                  shadowColor: Colors.deepOrange,
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 90,left: 10),
                                            child: Text(
                                                "Really convenient and the points system helps benefit loyalty. Some mild glitches here and there, but nothing too egregious. Obviously needs to roll out to more remote."),
                                          ),
                                          Positioned(
                                              width: 48,
                                              height: 48,
                                              left: 10,
                                              top: 10,
                                              child: Container(
                                                  padding: EdgeInsets.only(
                                                       ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            80),
                                                    color: Colors.white,
                                                  ),
                                                  child: Image.asset(
                                                      "assets/images/pr.png"))),
                                          Positioned(
                                              top: 5,
                                              right: 5,
                                              child: 
                                              IconButton(

                                                onPressed: () {
                                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                                    return RevR();
                                                  },));
                                                
                                              }, icon: SvgPicture.asset("assets/svg/dot.svg"),color: Colors.black,)
                                          
                                          ),
                                          Positioned(
                                              left: 80,
                                              top: 20,
                                              child: Container(
                                                child: Text(
                                                  "Alyce Lambo",
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w400,
                                                      fontSize: 14),
                                                ),
                                              )),
                                          Positioned(
                                              left: 80,
                                              top: 40,
                                              child: Container(
                                                child: Text(
                                                  "25/06/2020",
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w400,
                                                      fontSize: 10),
                                                ),
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ))
                        ],
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
