import 'package:fluapp/naviBottom.dart';
import 'package:flutter/material.dart';
import 'package:fluapp/reset.dart';
import 'package:country_picker_pro/country_picker_pro.dart';

class Rege extends StatefulWidget{
  @override
  State<Rege> createState()=>Regee();
}
class Regee extends State<Rege>{
  @override
  Widget build(BuildContext context){

    return Scaffold(

        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: -21,
                left: -46,
                width: 96,
                height: 96,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFE724C),
                      borderRadius: BorderRadius.circular(36)),
                ),
              ),
              Positioned(
                top: -99,
                left: -5,
                width: 165,
                height: 165,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFFECE7),
                      borderRadius: BorderRadius.circular(70)),
                ),
              ),
              Positioned(
                left: 289,
                top: -109,
                width: 181,
                height: 181,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFE724C),
                      borderRadius: BorderRadius.circular(70)),
                ),
              ),
              Positioned(
                  top: 37,
                  left: 27,
                  child: Container(
                    color: Color(0xffFFFFFF),
                    width: 38,
                    height: 38,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                  )),
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 150, right: 50),
                child: Text(
                  "Registration",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 200, left: 40),
                child: Text(
                  "Enter your phone number to verify your account",
                  style: TextStyle(),
                ),
              ),
              Positioned(
                  left: 26,
                  top: 301,
                  child: Container(
                    width: 324,
                    height: 65,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "prelookstudio@gmail.com",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFE724C))),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                      style: TextStyle(),
                    ),
                  )),
              Positioned(
                  top: 471,
                  left: 65,
                  child: Container(
                      width: 248,
                      height: 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFE724C)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                              return Navi();
                            },));

                          }, child: Text("Send",style: TextStyle(color: Colors.white),))))
            ],
          ),
        ),
    );

  }
}