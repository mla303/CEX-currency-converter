import 'package:cex_mobileapp/UI/navigation_bar.dart';
import 'package:cex_mobileapp/UI/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  _login createState() => _login();
}

class _login extends State<login> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
        home: Scaffold(
          // backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                width: width/1,
                //height: height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xff00A6A6), Color(0xff4BB3FD)])),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: height/15),
                    Image.asset('assets/slide_1.png',
                      height: 120,),
                    SizedBox(height: height/22),
                    Container(

                      width: width / 1.1,
                      height: height/1.5,

                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.white,
                        elevation: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            SizedBox(height: height/15),
                            //heading
                            Padding(
                              padding: const EdgeInsets.only(left:24.0),
                              child: Text(
                                'Welcome Back!',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: height / 40),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:24.0),
                              child: Text(
                                "Please login to your account",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: height/55,
                                    color: Colors.black45,
                                    letterSpacing: 0.5,
                                    height: 1.5
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),

                            SizedBox(height: height/25),

                            //email field
                            Padding(
                              padding: const EdgeInsets.only(left:24.0),
                              child: Container(
                                width: width / 1.4,
                                child:    Theme(
                                  data: new ThemeData(
                                    primaryColor: Colors.black26
                                  ),
                                  child: new TextFormField(
                                    cursorColor: Colors.black54,
                                    style: TextStyle(fontSize:height/50, color: Colors.black54,),

                                    decoration: InputDecoration(

                                   contentPadding: EdgeInsets.fromLTRB(5.0, 15.0, 20.0, 0.0),

                                      hintText: 'Email Address',

                                      
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    //obscureText: true,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: height/50),

                            //password field
                            Padding(
                              padding: const EdgeInsets.only(left:24.0),
                              child: Container(
                                width: width / 1.4,
                                child:    Theme(
                                  data: new ThemeData(
                                      primaryColor: Colors.black26
                                  ),
                                  child: new TextFormField(
                                    cursorColor: Colors.black54,
                                    style: TextStyle(color: Colors.black54,fontSize: height/50),

                                    decoration: InputDecoration(

                                      contentPadding: EdgeInsets.fromLTRB(5.0, 15.0, 6.0, 0.0),

                                      hintText: 'Password',
                                      suffixText: "Forget?",
                                      suffixStyle: TextStyle(color: Colors.blue,fontSize: height/60,fontWeight: FontWeight.bold),

                                    ),

                                    obscureText: true,

                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: height/18),
                            //button
                            Center(
                              child: Column(
                                children: <Widget>[
                                  ButtonTheme(
                                    minWidth: width/1.3,
                                    height: height/18,
                                    child: FlatButton(

                                      shape: new RoundedRectangleBorder(

                                        borderRadius: new BorderRadius.circular(20.0),
                                        //    side: BorderSide(color: Color(0xff2CBE77))
                                      ),


                                      color: Colors.lightBlue,
                                      textColor: Colors.white,
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            fontSize: height / 50,
                                            fontWeight: FontWeight.w500
                                          //letterSpacing: 1
                                        ),
                                      ),
                                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => navigate()));
                                      },
                                    ),
                                  ),

                                  Container(
                                    width: width/1.5,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                      Text(
                                        "Don\'t have an account?  ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: height/65,
                                            color: Colors.black45,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.5,
                                            height: 1.5
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                      InkWell(
                                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => signUp()));
                                        },
                                        child: Text(
                                          "Register Now",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                              fontSize: height/60,
                                              color: Colors.blue,
                                              letterSpacing: 0,
                                              height: 1.5

                                          ),

                                        ),
                                      ),
                                    ],),
                                  ),



                                  SizedBox(height: height/12),
                                  Text("Or login using social media",style: TextStyle(fontWeight: FontWeight.bold,fontSize: height/60),)
                                ],
                              ),
                            ),
                            //social links
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Transform.scale(
                                    scale: 0.5,
                                    child: IconButton(
                                      icon: new Image.asset('assets/fb.png'),
                                      tooltip: 'login facebook',
                                      onPressed: (){},
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 0.5,
                                    child: IconButton(
                                      icon: new Image.asset('assets/twitter.png'),
                                      tooltip: 'login twitter',
                                      onPressed: (){},
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 0.5,
                                    child: IconButton(
                                      icon: new Image.asset('assets/gmail.png'),
                                      tooltip: 'login gmaiil',
                                      onPressed: (){},
                                    ),
                                  ),
                                ],
                              ),
                            ),




                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height/22),





                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
