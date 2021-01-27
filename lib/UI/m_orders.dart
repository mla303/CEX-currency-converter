import 'package:cex_mobileapp/UI/add_recipt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigation_bar.dart';

class myorders extends StatefulWidget {
  @override
  _myorders createState() => _myorders();
}

class _myorders extends State<myorders> {

  String dropdownValue = 'Buying';

  List ratesList = [
    rates(
        countryName: "Canadian Dollar",
        currencyType: "CAD",
        currencyPrice: "\$115.25",
        flag: "canada.png"
    ),

    rates(
        countryName: "U.A.E Dirham",
        currencyType: "AED",
        currencyPrice: "\$42.45",
        flag: "uae.png"
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "My Orders",
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
      body: Column(
        children: <Widget>[
          SizedBox(height: height/60,),

          Container(
            height: height/1.3,
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
            //height: height/20,
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:18.0,right: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '14,500',style: TextStyle(color: Colors.white),
                      ),
                      Tab(
                        icon: Image.asset('assets/exchnage.png',color: Colors.white,),
                      ),
                      Text(
                        '\$125',style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width/1,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: height/60,),

                      Padding(
                        padding: const EdgeInsets.only(left:18.0,right: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Pending..",style: TextStyle(color: Colors.lightBlueAccent,fontSize: height/50),),
                            Text("4:30 25Dec,2019",style: TextStyle(color: Colors.lightBlueAccent,fontSize: height/50),)
                          ],
                        ),
                      ),
                      Divider(),
                      Row(
                        children: <Widget>[
                          Container(
                            width: width/1.4,
                            child: ListTile(
                              leading: Image.asset("flags/" + ratesList[index].flag,
                                width: 50,
                              ),
                              title:Text (ratesList[index].currencyType),
                              subtitle: Text(ratesList[index].countryName),

                            ),
                          ),
                          Text(ratesList[index].currencyPrice),
                        ],
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left:18.0,right: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Order# 2134",style: TextStyle(color: Colors.lightBlueAccent,fontSize: height/50),),
                            Row(
                              children: <Widget>[
                                Text("TYPE: ",style: TextStyle(color: Colors.black45,fontSize: height/50),),
                                Text("BUYING",style: TextStyle(color: Colors.lightBlueAccent,fontSize: height/50),),
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Container(
                        width: width/1,
                        height: height/8,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)
                        ),
                        child: Row(
                          children: <Widget>[
                            Text("You did't give any comment",style: TextStyle(color: Colors.black12),),
                          ],
                        ),

                      ),
                      Divider(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
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
                                "Add Recipt",
                                style: TextStyle(
                                    fontSize: height / 50,
                                    fontWeight: FontWeight.w500
                                  //letterSpacing: 1
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => AddRecipt()));
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
                                "Cancel Order",
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