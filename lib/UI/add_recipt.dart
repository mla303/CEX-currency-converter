import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'navigation_bar.dart';

class AddRecipt extends StatefulWidget {
  @override
  _AddRecipt createState() => _AddRecipt();
}

class _AddRecipt extends State<AddRecipt> {

  String dropdownValue = 'Buying';

  List ratesList = [
    rates(
        countryName: "Canadian Dollar",
        currencyType: "CAD",
        currencyPrice: "\$115.25",
        flag: "canada.png"
    ),

  ];


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.blue.shade200,
          title: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: height/60,),

          Container(
            height: height/1.2,
            child: new ListView.builder(
                itemCount: ratesList.length,
                itemBuilder: (BuildContext context, int index) =>
                    buildRatesCard(context, index)),

          ),

        ],
      ),
    );
  }




  Widget buildRatesCard(BuildContext context, int index) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // final rates = ratesList[index];
    return Column(
      children: <Widget>[
        Card(
          child: Container(
            width: width/1,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(height: height/60,),
                Text(
                  "Your Recipt",
                  style: TextStyle(
                      color: Colors.blue.shade200,
                      fontSize: height / 40,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1.5
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height/50,),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,right: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Order# ",style: TextStyle(color: Colors.lightBlueAccent,fontSize: height/50),),
                      Text("2134",style: TextStyle(color: Colors.lightBlueAccent,fontSize: height/50),),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,right: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Order Type",style: TextStyle(color: Colors.black45,fontSize: height/50),),
                      Text("Buying",style: TextStyle(color: Colors.black45,fontSize: height/50),)
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,right: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Currency Type",style: TextStyle(color: Colors.black45,fontSize: height/50),),
                      Row(
                        children: <Widget>[
                          Image.asset("flags/"+ratesList[index].flag),
                          Text (ratesList[index].currencyType),
                        ],
                      )
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,right: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Order Date",style: TextStyle(color: Colors.black45,fontSize: height/50),),
                      Text("25 Dec,2019",style: TextStyle(color: Colors.black45,fontSize: height/50),)
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,right: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Order Time",style: TextStyle(color: Colors.black45,fontSize: height/50),),
                      Text("21:25:04",style: TextStyle(color: Colors.black45,fontSize: height/50),)
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,right: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Pay Money",style: TextStyle(color: Colors.black45,fontSize: height/50),),
                      Text("14,500/-",style: TextStyle(color: Colors.black45,fontSize: height/50),)
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,right: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Pay Money for",style: TextStyle(color: Colors.black45,fontSize: height/50),),
                      Text("\$125",style: TextStyle(color: Colors.black45,fontSize: height/50),)
                    ],
                  ),
                ),
                Divider(),

                Container(
                  width: width/1.1,
                  height: height/4,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12)
                  ),
                  child: Row(
                    children: <Widget>[
                      Text("",style: TextStyle(color: Colors.black12),
                      textAlign: TextAlign.center,),
                    ],
                  ),

                ),
                SizedBox(height: height/50,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: width/4,
                      height: height/18,
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                          //    side: BorderSide(color: Color(0xff2CBE77))
                        ),
                        color: Colors.lightBlue,
                        textColor: Colors.white,
                        child: Text(
                          "Upload Image",
                          style: TextStyle(
                              fontSize: height / 50,
                              fontWeight: FontWeight.w500
                            //letterSpacing: 1
                          ),
                        ),
                        onPressed: () {
//                                Navigator.push(context,
//                                    MaterialPageRoute(builder: (context) => navigate()));
                        },
                      ),
                    ),
                    SizedBox(width: width/60,),
                    ButtonTheme(
                      minWidth: width/4,
                      height: height/18,
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                          //    side: BorderSide(color: Color(0xff2CBE77))
                        ),
                        color: Colors.lightBlue,
                        textColor: Colors.white,
                        child: Text(
                          "Done",
                          style: TextStyle(
                              fontSize: height / 50,
                              fontWeight: FontWeight.w500
                            //letterSpacing: 1
                          ),
                        ),
                        onPressed: () {

                          return showDialog(context: context,
                            builder: (context){
                              return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  content: Container(

                                    height: height/11,
                                    child: Column(

                                      children: <Widget>[
                                        Text("Are You Sure?"),
                                        SizedBox(width: width/60,),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            ButtonTheme(
                                              minWidth: width/4,
                                              height: height/18,
                                              child: FlatButton(
                                                shape: new RoundedRectangleBorder(
                                                  borderRadius: new BorderRadius.circular(20.0),
                                                  //    side: BorderSide(color: Color(0xff2CBE77))
                                                ),
                                                color: Colors.lightBlue,
                                                textColor: Colors.white,
                                                child: Text(
                                                  "Yes",
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
                                            SizedBox(width: width/60,),
                                            ButtonTheme(
                                              minWidth: width/4,
                                              height: height/18,
                                              child: FlatButton(
                                                shape: new RoundedRectangleBorder(
                                                  borderRadius: new BorderRadius.circular(20.0),
                                                  //    side: BorderSide(color: Color(0xff2CBE77))
                                                ),
                                                color: Colors.lightBlue,
                                                textColor: Colors.white,
                                                child: Text(
                                                  "No",
                                                  style: TextStyle(
                                                      fontSize: height / 50,
                                                      fontWeight: FontWeight.w500
                                                    //letterSpacing: 1
                                                  ),
                                                ),
                                                onPressed: () {

                                                  Navigator.pop(context);

//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => navigate()));
                                                },
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )

                              );
                            },
                          );

//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => navigate()));
                        },
                      ),
                    ),
                    SizedBox(width: width/60,),
                  ],
                ),
                SizedBox(height: height/60,)
              ],
            ),
          ),
        ),

        SizedBox(height: height/60,)
      ],
    );


  }

}


class rates {
  String countryName;
  String currencyType;
  String currencyPrice;
  String flag;


  rates({this.countryName, this.currencyType, this.currencyPrice, this.flag});
}