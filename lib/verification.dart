import 'package:fluapp/reset.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluapp/login.dart';
import 'package:pinput/pinput.dart';
import 'package:fluapp/reset.dart';

class Verifacion extends StatefulWidget {
  @override
  State<Verifacion> createState() {
    return Verifacionn();
  }
}

class Verifacionn extends State<Verifacion> {
  @override
  Widget build(BuildContext context) {
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return Reset();
                        },));

                      }, icon: Icon(Icons.arrow_back_ios)),
                )),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 150, right: 50),
              child: Text(
                "Verification Code",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 200, left: 40),
              child: Text(
                "Please type the verification code sent to prelookstudio@gmail.com",
                style: TextStyle(),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(),
              child: Pinput(),
            ),
          ],
        ),
      ),
    );
  }
}
