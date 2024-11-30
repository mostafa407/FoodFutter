import 'package:flutter/material.dart';
import 'package:fluapp/faourite.dart';
import 'package:fluapp/navi/addAddress.dart';

class Pro extends StatefulWidget {
  @override
  State<Pro> createState() => Prof();
}

class Prof extends State<Pro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 375,
                  height: 280,
                  child: Stack(
                    children: [
                      Positioned(
                          left: 200,
                          top: -120,
                          child: Container(
                            width: 174,
                            height: 350,
                            decoration: BoxDecoration(
                                color: Color(0xffFE724C),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    topLeft: Radius.circular(200),
                                    topRight: Radius.circular(130),
                                    bottomRight: Radius.circular(250))),
                          )),
                      Positioned(
                          left: 102,
                          top: -30,
                          child: Container(
                            width: 96,
                            height: 96,
                            decoration: BoxDecoration(
                                color: Color(0xffFFE2DA), shape: BoxShape.circle),
                          )),
                      Positioned(
                          left: -20,
                          //right: 200,
                          top: -86,
                          child: Container(
                            width: 124,
                            height: 205,
                            decoration: BoxDecoration(
                              color: Color(0xffFFC529),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(200)),
                            ),
                          )),
                      Positioned(
                        child: Container(
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: CircleBorder(
                                  side: BorderSide(color: Colors.white))),
                          height: 90,
                          width: 90,
                          margin: EdgeInsets.only(top: 170, left: 120),
                          child: ClipRRect(
                            child: Image.asset("assets/images/profie_image.png"),
                            borderRadius: BorderRadius.circular(90),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 30,
                          left: 30,
                          child: Container(
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(38)),
                            child: IconButton(onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                return Fourth();
                              },));

                            }, icon: Icon(Icons.arrow_back_ios_new_rounded,)),
                          )),

                    ],

                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  width: 140,height: 50,child:Column(
                  children: [
                    Text("Eljad Eendaz",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                    Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                  ],
                ),),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 20, right: 20,bottom: 10,top: 10),
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 5),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Full name",
                          )),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        style: TextStyle(),
                        decoration: InputDecoration(
                            hintText: "Eljad Eendaz",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.deepOrange)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.red)),
                            fillColor: Colors.red),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(right: 20, left: 20,top: 10,bottom: 10),
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 5),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "E-mail",
                          )),
                      TextFormField(
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(),
                        decoration: InputDecoration(
                            hintText: "prelookstudio@gmail.com",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.pinkAccent,
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.red)),
                            fillColor: Colors.red),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 20, right: 20,top: 10,bottom: 10),
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 5),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Phone Number",
                          )),
                      Form(
                        child: TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(),
                          decoration: InputDecoration(
                              hintText: "+1 (783) 0986 8786",
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.pinkAccent,
                                  )),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.red)),
                              fillColor: Colors.red),
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
