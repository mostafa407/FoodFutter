import 'package:flutter/material.dart';
import 'package:fluapp/naviBottom.dart';
import 'package:fluapp/rating.dart';

class Fourth extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios_new_rounded),
      title: Text("Add new address"),
      ),

        body:SingleChildScrollView(child: Column(
          children: [
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
                        // enabledBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(10),
                        //     borderSide: BorderSide(
                        //       color: Colors.pinkAccent,
                        //     )),
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
                        "Mobile number",
                      )),
                  TextFormField(
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(),
                    decoration: InputDecoration(
                        hintText: "018-49862746",
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
              margin: EdgeInsets.only(right: 20, left: 20,top: 10,bottom: 10),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 5),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "State",
                      )),
                  TextFormField(
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(),
                    decoration: InputDecoration(
                        hintText: "Slect State",
                        // enabledBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(10),
                        //     borderSide: BorderSide(
                        //       color: Colors.pinkAccent,
                        //     )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                        fillColor: Colors.red),
                  ),

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
                        "City",
                      )),
                  TextFormField(
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(),
                    decoration: InputDecoration(
                        hintText: "Select City",
                        // enabledBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(10),
                        //     borderSide: BorderSide(
                        //       color: Colors.pinkAccent,
                        //     )),
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
                        "Street (Include house number)",
                      )),
                  TextFormField(
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(),
                    decoration: InputDecoration(
                        hintText: "Street",
                        // enabledBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(10),
                        //     borderSide: BorderSide(
                        //       color: Colors.pinkAccent,
                        //     )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                        fillColor: Colors.red),
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10),
              width: 250,
              height: 60,
              child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFE724C)),onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return Rat();
                  },));
              }, child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),)),
            )
          ],
        ),));
  }
}