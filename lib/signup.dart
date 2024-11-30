import 'package:fluapp/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluapp/main.dart';
import 'package:flutter/widgets.dart';

class SignU extends StatefulWidget {
  //SignUp({Key? key}):super(key: key);
  @override
  State<SignU> createState() => SignUU();
// SignState createState() => SignState();
// }
// class SignState extends State<SignU>{
}

class SignUU extends State<SignU> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 80,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                     left: -70,top: -120,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150),
                            color: Color.fromARGB(190, 253, 235, 235)),
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Positioned(
                        left: -40,top: 60,
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(top: Radius.elliptical(200, 100)),
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
                  "Sign Up",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                          "Full name",
                        )),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(),
                      decoration: InputDecoration(
                          hintText: "Your Name",
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
                      "Already have an account?",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    InkWell(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.deepOrange),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return Login();
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
                    Text("Sign Up with"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.face_2),
                                Text("FACEBOOK"),
                              ],
                            )),
                        Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.email,
                                    ),
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
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: Text("signup"),
      ),
    );
  }
}
