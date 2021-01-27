import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      //backgroundColor: Colors.white70,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.blue.shade200,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Home",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: height / 40,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.5
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                  children: <Widget>[
                Container(

                  height: height/4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                     colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.dstATop),
                      image: AssetImage('assets/coverpic.png'),
                      fit: BoxFit.fill
                    )
                  ),
                ),
                                    Positioned(
                        top: 110,
                        left: 40,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 140,
                              child: Text('Exchange Your Currency Online',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: height/40,
                                ),
                              overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                            Container(

                              width: 140,
                              child: Text('Easy-Fast-Secure',
                                style: TextStyle(
                                  color: Colors.black,
//                                  fontWeight: FontWeight.bold,
                                  fontSize: height/60,
                                ),
                              ),
                            ),
                          ],
                        )
                                    )

                  ],),
              Divider(),

              Center(
                child: Column(
                    children: <Widget>[
                      SizedBox(height: height/60,),
                      Text("Our Vision",style: TextStyle(fontSize: height/30,fontWeight: FontWeight.bold),),
                      SizedBox(height: height/70,),
                      Container(
                        width: width/1.3,
//                        height: 50,
                        child: Text('Our business has always been driven by a sense of purpose, a thread that connects us to our founding companies and their social missions to improve health.',
                          style: TextStyle(
                            color: Colors.black,
//                            fontWeight: FontWeight.bold,
                            fontSize: height/50,
                          ),
textAlign: TextAlign.center,
//                          overflow: TextOverflow.,
                          maxLines: 6,
                        ),
                      ),
                      SizedBox(height: height/60,),

                    ],
                ),
              ),
              Divider(),
              //SizedBox(height: height/60,),
              Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: height/60,),
                    Text("Our Services",style: TextStyle(fontSize: height/30,fontWeight: FontWeight.bold),),
                    SizedBox(height: height/70,),
                    Container(
                      width: width/1.1,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: height/10,
                            ),

                           Tab(
                             icon: Image.asset('assets/exchange.png'),
                           ),
                             SizedBox(width: width/20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Exchnage Currecny',style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.w500),),
                                SizedBox(
                                  height: height/120,
                                ),
                                Container(
                                  width: width/1.7,
//                        height: 50,
                                  child:  Text('You can Change Your Currency using our services,we deliver also',
                                    style: TextStyle(
                                      color: Colors.black,
//                            fontWeight: FontWeight.bold,
                                      fontSize: height/60,
                                    ),
                                    textAlign: TextAlign.start,
//                          overflow: TextOverflow.,
                                    maxLines: 6,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      width: width/1.1,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: height/10,
                            ),

                            Tab(
                              icon: Image.asset('assets/exchange.png'),
                            ),
                            SizedBox(width: width/20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Currecny Rates',style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.w500),),
                                SizedBox(
                                  height: height/120,
                                ),
                                Container(
                                  width: width/1.7,
//                        height: 50,
                                  child:  Text('You can View Currency Rates of Currecny',
                                    style: TextStyle(
                                      color: Colors.black,
//                            fontWeight: FontWeight.bold,
                                      fontSize: height/60,
                                    ),
                                    textAlign: TextAlign.start,
//                          overflow: TextOverflow.,
                                    maxLines: 6,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height/60,),

                  ],
                ),
              )
            ],
          )),
    );
  }
}
