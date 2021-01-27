import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(milliseconds: 3000);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/Home');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return new Scaffold(
      body: new Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xff00A6A6), Color(0xff4BB3FD)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            SizedBox(height: height/3,),
            Container(
//              decoration: BoxDecoration(
//                  color: Colors.transparent
//              ),
              child:
                Image.asset('assets/slide_1.png',
                  height: 150,),

            ),
            SizedBox(height: height/60),
            Text("Currency Exchanger",style: TextStyle(fontSize: height/40,color: Colors.white),),
            SizedBox(height: height/60),
            Text("Fast - Easy - Secure",style: TextStyle(fontSize: height/60,color: Colors.black45),),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 40,
                animation: true,
                lineHeight: 5.0,
                animationDuration: 2500,
                percent: 1,
                //center: Text("100.0%", style: TextStyle(fontSize: 10),),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
