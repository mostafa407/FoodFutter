import 'package:fluapp/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluapp/verification.dart';
import 'package:flutter_svg/svg.dart';
import 'verification.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 80,
              width: double.infinity,
              child: Stack(

                children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 40),
                width: 10,
                height: 10,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(left: 40),
                child: IconButton(onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                              return Login();
                            },));
                }, icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
              ),
                  Positioned(
                    left: -70,
                    top: -120,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                          color: Color.fromARGB(190, 253, 235, 235)),
                      width: 200,
                      height: 200,
                    ),
                  ),
                  Positioned(
                      left: -40,
                      top: 60,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.elliptical(200, 100)),
                            color: Colors.deepOrange),
                        height: 60,
                        width: 60,
                      )),
                  Positioned(
                      right: -70,
                      top: -70,
                      bottom: 0,
                      child: Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.deepOrangeAccent,
                        ),
                        width: 150,
                        height: 150,
                      ))
                ],
              ),
            ),
            Container(
              //margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.only(left: 30),
              alignment: Alignment.topLeft,
              child: Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(right: 20, left: 20),
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
                        hintText: "your Email",
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
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(

                      padding: EdgeInsets.only(left: 5),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Password",
                      )),
                  Form(
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(),
                      decoration: InputDecoration(
                          hintText: "your Password",
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
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 5),
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return SignU();
                          },));
                        },
                        child: Text(

                          "Forgot password?",
                          style: TextStyle(color: Colors.deepOrange),
                        ),
                      )),
                ],
              ),
            ),
            Container(
              width: 300,
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange),
                child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )),
                onPressed: () {},
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  InkWell(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.deepOrange),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return Verifacion();
                        },
                      ));
                    },
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Text("Sign in with"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/images/faceb.svg"),
                              //Icon(Icons.face_2),
                              Text("FACEBOOK"),
                            ],
                          )),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset("assets/images/google.svg"),
                                  Text("GOOGLE"),
                                ],
                              ))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
