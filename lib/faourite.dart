import 'package:fluapp/switchcustom.dart';
import 'package:flutter/material.dart';
import 'package:fluapp/myOrder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluapp/profile.dart';

class Fav extends StatefulWidget {
  @override
  State<Fav> createState() => Favo();
}

class Favo extends State<Fav> {
  bool _enable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Favourite")),
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
              width: 300,
              height: 50,
              child: CustomSwitch(
                value: _enable,
                onChanged: (bool value) {
                  setState(() {
                    _enable = value;
                  });
                },
              ),
            )
            // Container(
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(50),
            //       color: Colors.deepOrange),
            //   child: ElevatedButton(onPressed: () {
            //       Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            //         return Pro();
            //       },));
            //   }, child: Text("")),
            //   width: 320,
            //   margin: EdgeInsets.only(top: 30, left: 20),
            //   height: 55,
            // ),
            ,
            Container(
              height: 600,
              width: 400,
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
                                height: 300,
                                color: Colors.white,
                                child: Card(
                                  elevation: 10,
                                  shadowColor: Colors.deepOrange,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) {
                                          return Pro();
                                        },
                                      ));
                                    },
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
                                                    padding: EdgeInsets.only(
                                                        left: 15, top: 5),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      color: Colors.white,
                                                    ),
                                                    child: Text(
                                                      "10.35",
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ))),
                                            Positioned(
                                                top: 5,
                                                right: 5,
                                                child: SvgPicture.asset(
                                                    "assets/svg/heart.svg")),
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              right: 140, top: 15),
                                          child: Text(
                                            "Chicken Hawaiian",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "Chicken, Cheese and pineapple",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          margin: EdgeInsets.only(
                                              right: 85, top: 5),
                                        )
                                      ],
                                    ),
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
