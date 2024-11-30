import 'package:flutter/material.dart';
import 'package:fluapp/home.dart';
import 'package:fluapp/login.dart';
import 'package:fluapp/signup.dart';
import 'package:fluapp/main.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => Homee();
}

class Homee extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    },
                  ));
                },
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.deepOrangeAccent),
                )),
          ),
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/167.jpeg"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
             children: [
            //   Image.asset(
            //     "assets/images/FoodHub2.jpeg",
            //     width: double.infinity,
            //     height: double.infinity,
            //   ),
              Container(
                child: Text(
                  "Welcome to",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.only(left: 20),
                width: double.infinity,
              ),
              Container(
                width: double.infinity,
                child: Text(
                  "FoodHub",
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.only(left: 20),
              ),
              Container(
                width: double.infinity,
                child: Text(
                  "Your favourite foods delivered fast at your door.",
                  style: TextStyle(fontSize: 18),
                ),
                padding: EdgeInsets.only(left: 20, top: 20),
              ),
              // Align(alignment: FractionalOffset.bottomLeft,
              //     child: Padding(
              //       padding: EdgeInsets.only(bottom: 10),
              //       child: Text("sign in with",
              //       style: TextStyle(),),
              //     ),),

              Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(color: Colors.black45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 250),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [Icon(Icons.face), Text("FaceBook")],
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [Icon(Icons.mail), Text("Gmail")],
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 300,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return SignU();
                                },
                              ));
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white24),
                          child: Text(
                            "Start with email or phone",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(child: Text("Already have an account? ")),
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) {
                                      return Login();
                                    },
                                  ));
                                },
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                )),
                          ],
                        )),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
