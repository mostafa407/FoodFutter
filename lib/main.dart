import 'package:fluapp/login.dart';
import 'package:fluapp/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:fluapp/home.dart';
void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
   MyApp({super.key});
   // This widget is the root of your application.
   @override
  State<MyApp> createState() => MyAppaState();
}
class MyAppaState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 1),
      () {
        FlutterNativeSplash.remove();
      },
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
      // Scaffold(
      //   appBar: AppBar(
      //     actions: [
      //       Container(
      //         margin: EdgeInsets.only(right: 5),
      //         child: ElevatedButton(
      //             onPressed: () {},
      //             child: Text(
      //               "Skip",
      //               style: TextStyle(color: Colors.deepOrangeAccent),
      //             )),
      //       ),
      //     ],
      //   ),
      //   body: SizedBox(
      //     height: double.infinity,
      //     width: double.infinity,
      //     child: Container(
      //       // decoration: BoxDecoration(
      //       //     image: DecorationImage(
      //       //         image: AssetImage("assets/images/second.jpg"))),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Container(
      //             child: Text(
      //               "Welcome to",
      //               style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      //             ),
      //             padding: EdgeInsets.only(left: 20),
      //             width: double.infinity,
      //           ),
      //           Container(
      //             width: double.infinity,
      //             child: Text(
      //               "FoodHub",
      //               style: TextStyle(
      //                   color: Colors.deepOrange,
      //                   fontSize: 40,
      //                   fontWeight: FontWeight.bold),
      //             ),
      //             padding: EdgeInsets.only(left: 20),
      //           ),
      //           Container(
      //             width: double.infinity,
      //             child: Text(
      //               "Your favourite foods delivered fast at your door.",
      //               style: TextStyle(fontSize: 18),
      //             ),
      //             padding: EdgeInsets.only(left: 20, top: 20),
      //           ),
      //           // Align(alignment: FractionalOffset.bottomLeft,
      //           //     child: Padding(
      //           //       padding: EdgeInsets.only(bottom: 10),
      //           //       child: Text("sign in with",
      //           //       style: TextStyle(),),
      //           //     ),),
      //
      //           Container(
      //             margin: EdgeInsets.only(top: 250),
      //             child: Row(
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: [
      //                 ElevatedButton(
      //                   style: ElevatedButton.styleFrom(
      //                       backgroundColor: Colors.white),
      //                   onPressed: () {},
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                     crossAxisAlignment: CrossAxisAlignment.center,
      //                     children: [Icon(Icons.face), Text("FaceBook")],
      //                   ),
      //                 ),
      //                 ElevatedButton(
      //                     style: ElevatedButton.styleFrom(
      //                         backgroundColor: Colors.white),
      //                     onPressed: () {},
      //                     child: Row(
      //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                       crossAxisAlignment: CrossAxisAlignment.center,
      //                       children: [Icon(Icons.mail), Text("Gmail")],
      //                     )),
      //               ],
      //             ),
      //           ),
      //           Container(
      //             margin: EdgeInsets.only(top: 10),
      //             width: 300,
      //             child: ElevatedButton(
      //                 onPressed: () {
      //                   setState(() {
      //                     Navigator.of(context).push(MaterialPageRoute(
      //                       builder: (context) {
      //                         return SignU();
      //                       },
      //                     ));
      //                   });
      //                 },
      //                 style: ElevatedButton.styleFrom(
      //                     backgroundColor: Colors.white24),
      //                 child: Text(
      //                   "Start with email or phone",
      //                   style: TextStyle(color: Colors.white),
      //                 )),
      //           ),
      //           Container(
      //               margin: EdgeInsets.only(bottom: 10),
      //               child: Row(
      //                 crossAxisAlignment: CrossAxisAlignment.center,
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   InkWell(child: Text("Already have an account? ")),
      //                   InkWell(
      //                       onTap: () {
      //                         Navigator.of(context).push(MaterialPageRoute(
      //                           builder: (context) {
      //                             return Login();
      //                           },
      //                         ));
      //                       },
      //                       child: Text(
      //                         "Sign In",
      //                         style: TextStyle(fontWeight: FontWeight.w800),
      //                       )),
      //                 ],
      //               )),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      ,routes: {"SignUp": (context) => SignU(), "SignIn": (context) => Login()},
    );
  }
}
