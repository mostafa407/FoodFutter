import 'package:flutter/material.dart';

class RevR extends StatefulWidget {
  @override
  State<RevR> createState() => RevRe();
}

class RevRe extends State<RevR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    boxShadow: [BoxShadow(color: Colors.redAccent)]),
                margin: EdgeInsets.only(left: 140),
                width: 80,
                height: 80,
                child: Image.asset("assets/images/m.png")),
            Container(
              alignment: Alignment.center,
              width: 320,
              margin: EdgeInsets.only(left: 25),
              child: Text(
                "How was your last order from Pizza Hut ?",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Text(
                "Good",
                style: TextStyle(
                    color: Color(0xffFE724C),
                    fontWeight: FontWeight.w400,
                    fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.brown,
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              margin: EdgeInsets.only(left: 20,right: 20,top: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Write review",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(300))),
              ),
            ),
            Container(
              width: 250,
              height: 60
              ,margin: EdgeInsets.only(top: 150,left: 50),child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFE724C)),
                onPressed: () {


                }, child: Text("SUBMIT",style: TextStyle(color: Colors.white),)),),
          ],
        ),
      ),
    );
  }
}
