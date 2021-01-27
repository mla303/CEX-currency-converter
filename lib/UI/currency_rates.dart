import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class currency_rates extends StatefulWidget {
  @override
  _currency_ratesState createState() => _currency_ratesState();
}

class _currency_ratesState extends State<currency_rates> {

  bool _buyingVisible = false;
  bool _sellingVisible = false;

  bool _already = false;

  String dropdownValue = 'Buying';



  List SellingList = [
    rates(
        countryName: "Canadian Dollar",
        currencyType: "CAD",
        currencyPrice: "\$110.25",
        flag: "canada.png"
    ),

    rates(
        countryName: "China Yaun",
        currencyType: "CNY",
        currencyPrice: "\$23.50",
        flag: "china.png"
    ),

    rates(
        countryName: "Euro",
        currencyType: "EUR",
        currencyPrice: "\$142.50",
        flag: "europe.png"
    ),

    rates(
        countryName: "UK Pound Streling",
        currencyType: "GBP",
        currencyPrice: "\$251.25",
        flag: "britain.png"
    ),
    rates(
        countryName: "Saudi Riyal",
        currencyType: "SAR",
        currencyPrice: "\$61.40",
        flag: "saudi.png"
    ),

    rates(
        countryName: "U.A.E Dirham",
        currencyType: "AED",
        currencyPrice: "\$72.45",
        flag: "uae.png"
    ),

    rates(
        countryName: "US Dollar",
        currencyType: "USA",
        currencyPrice: "\$125.90",
        flag: "usa.png"
    ),


  ];





   List BuyingList = [
     rates(
       countryName: "Canadian Dollar",
       currencyType: "CAD",
       currencyPrice: "\$115.25",
       flag: "canada.png"
     ),

     rates(
         countryName: "China Yaun",
         currencyType: "CNY",
         currencyPrice: "\$22.50",
         flag: "china.png"
     ),

     rates(
         countryName: "Euro",
         currencyType: "EUR",
         currencyPrice: "\$172.50",
         flag: "europe.png"
     ),

     rates(
         countryName: "UK Pound Streling",
         currencyType: "GBP",
         currencyPrice: "\$201.25",
         flag: "britain.png"
     ),
     rates(
         countryName: "Saudi Riyal",
         currencyType: "SAR",
         currencyPrice: "\$41.40",
         flag: "saudi.png"
     ),

     rates(
         countryName: "U.A.E Dirham",
         currencyType: "AED",
         currencyPrice: "\$42.45",
         flag: "uae.png"
     ),

     rates(
         countryName: "US Dollar",
         currencyType: "USA",
         currencyPrice: "\$155.90",
         flag: "usa.png"
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
                "CEX Currency Rates",
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
          Center(
            child: Container(
              width: width/1,
              //height: height/20,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(left:18.0,right: 18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Currencies',style: TextStyle(color: Colors.white),
                    ),
                    Text("Select Option",style: TextStyle(color: Colors.white),),
                   Theme(
                     data: Theme.of(context).copyWith(
                       canvasColor: Colors.blue.shade200,
                     ),
                     child: new DropdownButton<String>(
                       value: dropdownValue,
                       icon: Icon(Icons.arrow_drop_down,color: Colors.white,),
                       iconSize: 24,
                       elevation: 16,
                       style: TextStyle(color: Colors.white),
                       underline: Container(
                         height: 2,
                         color: Colors.transparent,
                       ),
                       focusColor: Colors.deepOrange,
                       onChanged: (String newValue) {
                         setState(() {
                           this.dropdownValue = newValue;



                           if(newValue == "Buying")
                             {
                               _sellingVisible = false;
                               _buyingVisible = !_buyingVisible;
                             }
                           else if (newValue == "Selling")
                           {
                             _buyingVisible = false;
                             _sellingVisible = !_sellingVisible;
                           }


                         });
                       },
                       items: <String>['Buying', 'Selling',]
                           .map<DropdownMenuItem<String>>((String value) {
                         return DropdownMenuItem<String>(
                           value: value,
                           child: Text(value),
                         );
                       }).toList(),
                     ),
                   ),
                  ],
                ),
              ),
            ),
          ),
//          Container(
//            color: Colors.lightBlueAccent,
//            height: height/1.4,
//            child: ListView.builder(
//                itemCount: SellingList.length,
//                itemBuilder: (BuildContext context, int index) =>
//                    Selling(context, index)),
//          ),




        Visibility(
          visible: _buyingVisible,
          child: Container(
            //color: Colors.red,
            height: height/1.5,
            child: new ListView.builder(
            itemCount: BuyingList.length,
                itemBuilder: (BuildContext context, int index) =>
                    Buyying(context, index)),
          ),
        ),
        Visibility(
          visible: _sellingVisible,
          child: Container(
            //color: Colors.lightBlue,
            height: height/1.4,
            child: new ListView.builder(
                itemCount: SellingList.length,
                itemBuilder: (BuildContext context, int index) =>
                    Selling(context, index)),
          ),
        ),

        ],
      ),
    );
  }




  Widget Buyying(BuildContext context, int index) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
   // final rates = ratesList[index];
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right:16.0,left: 16),
          child: Row(
            children: <Widget>[
              Container(
                width: width/1.4,
                child: ListTile(
            leading: Image.asset("flags/" + BuyingList[index].flag,
            width: 50,
            ),
            title:Text (BuyingList[index].currencyType),
          subtitle: Text(BuyingList[index].countryName),

        ),
        ),
              Text(BuyingList[index].currencyPrice),
            ],
          ),

//



//              Container(
//                child:Image.network(rates.flag.toString()),
//              ),

//              Text(rates.country_name, style: new TextStyle(fontSize: 30.0),),
//              Padding(
//                padding: const EdgeInsets.only(top: 4.0, bottom: 80.0),
//                child: Row(children: <Widget>[
//                  Text(
//                      rates.currency_type),
//                  Spacer(),
//                ]),
//              ),
//              Padding(
//                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//                child: Row(
//                  children: <Widget>[
//                    Text("\$${rates.currency_price}", style: new TextStyle(fontSize: 35.0),),
//                    Spacer(),
//                    Icon(Icons.directions_car),
//                  ],
//                ),
//              )
          ),
        Divider(),
      ],
    );


  }

  Widget Selling(BuildContext context, int index) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // final rates = ratesList[index];
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right:16.0,left: 16),
          child: Row(
            children: <Widget>[
              Container(
                width: width/1.4,
                child: ListTile(
                  leading: Image.asset("flags/" + SellingList[index].flag,
                    width: 50,
                  ),
                  title:Text (SellingList[index].currencyType),
                  subtitle: Text(SellingList[index].countryName),

                ),
              ),
              Text(SellingList[index].currencyPrice),
            ],
          ),

//



//              Container(
//                child:Image.network(rates.flag.toString()),
//              ),

//              Text(rates.country_name, style: new TextStyle(fontSize: 30.0),),
//              Padding(
//                padding: const EdgeInsets.only(top: 4.0, bottom: 80.0),
//                child: Row(children: <Widget>[
//                  Text(
//                      rates.currency_type),
//                  Spacer(),
//                ]),
//              ),
//              Padding(
//                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//                child: Row(
//                  children: <Widget>[
//                    Text("\$${rates.currency_price}", style: new TextStyle(fontSize: 35.0),),
//                    Spacer(),
//                    Icon(Icons.directions_car),
//                  ],
//                ),
//              )
        ),
        Divider(),
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