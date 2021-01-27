import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'navigation_bar.dart';
import 'package:tel_input/tel_input.dart';


class testing extends StatefulWidget {
  @override
  _PlaceYourOrderState createState() => _PlaceYourOrderState();
}

class _PlaceYourOrderState extends State<testing> {

  TextEditingController amount = new TextEditingController();

  var currencyOption = ['Buying', 'Selling'];
  var _Selectedoptions = 'Buying';

  var pickupoption = ['Shipping', 'PickUp at Nearby Shop'];
  String pickupselected;


  List<String> _nearbyShops = ['Mehran Exchnage Shop,DHA2','World Exchnager,Amazon Mall','AnType Exchnage currency,Bahria Town'];
  String slectshop;


  String _myseletion;
  List<Map> _flags =[
    {
      "id": 0,
      "image": "flags/canada.png",
      "name": "CAD"
    },
    {
      "id": 1,
      "image": "flags/china.png",
      "name": "CNY"
    },
    {
      "id": 2,
      "image": "flags/europe.png",
      "name": "EUR"
    },
    {
      "id": 3,
      "image": "flags/britain.png",
      "name": "GBP"
    },
    {
      "id": 4,
      "image": "flags/usa.png",
      "name": "US"
    },
    {
      "id": 5,
      "image": "flags/saudi.png",
      "name": "SAR"
    }
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
                "Place Your Order",
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
            SizedBox(height: height/60,),
            Center(child: Text("Enter Your Detail",style: TextStyle(fontSize: height/40,color: Colors.lightBlue),)),
            SizedBox(height: height/60,),
            Container(
              width: width/1.2,
              color: Colors.black12,
              child: DropdownButtonHideUnderline(
                child: Padding(
                  padding: const EdgeInsets.only(left:18.0,right: 8),
                  child: ButtonTheme(
                    child: DropdownButton<String>(
                      //hint: Text("Select Airport"),
                      items: currencyOption.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem,style: TextStyle(color: Color(0xff323031), letterSpacing: 1),),
                        );
                      }).toList(),
                      onChanged: (String newValueSelected) {
                        // Your code to execute, when a menu item is selected from drop down
                        _onDropDownItemSelected(newValueSelected);
                      },
                      value: _Selectedoptions,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height/60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Select Currency for $_Selectedoptions ",style: TextStyle(
                    fontSize: height/60,color:Color(0xff323031),letterSpacing: 0 )),
                Container(

                  color: Colors.black12,
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.only(left:10.0,),
                      child: ButtonTheme(
                        child: DropdownButton<String>(
                            hint: Text("Select Currency"),
                            value: _myseletion,
                            onChanged: (String newValueSelected) {
                              // Your code to execute, when a menu item is selected from drop down
                              setState(() {
                                _myseletion = newValueSelected;
                              });
                            },
                            items: _flags.map((Map map)
                            {
                              return new DropdownMenuItem<String> (
                                value: map["name"].toString(),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(map["image"],
                                      width: 25,),
                                    Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(map["name"]))
                                  ],
                                ),
                              );
                            }).toList()
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: height/60,),
            Container(
              width: width/1.2,
              child: Theme(
                data: new ThemeData(
                  primaryColor: Colors.black12,
                  primaryColorDark: Colors.black12,
                ),
                child: new TextField(
                  controller: amount,
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                    hintText: 'Enter Your Amount',
                    labelText: 'enter amount',
                    suffixText: _myseletion,
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
            ),
            SizedBox(height: height/60,),
            Container(
              width: width/1.2,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12)
              ),
              child: Row(
                children: <Widget>[
                  Text("Your Will Pay \$"),
                  Text(amount.text)
                ],
              ),

            ),
            SizedBox(height: height/60,),
            Container(
              width: width/1.2,
              color: Colors.black12,
              child: DropdownButtonHideUnderline(
                child: Padding(
                  padding: const EdgeInsets.only(left:18.0,right: 8),
                  child: ButtonTheme(
                    child: DropdownButton<String>(
                      hint: Text("Currency Pickup"),
                      value: pickupselected,
                      onChanged: (String newValueSelected) {

                        // Your code to execute, when a menu item is selected from drop down

                        setState(() {
                          this.pickupselected = newValueSelected;

                          if (newValueSelected == "Shipping")
                          {
                            _shops = false;
                            _isVisible = !_isVisible;

                          }
                          else if (newValueSelected == "PickUp at Nearby Shop")
                          {
                            _isVisible = false;
                            _shops = !_shops;
                          }

                        });
                      },

                      items: pickupoption.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem,style: TextStyle(color: Color(0xff323031), letterSpacing: 1),),
                        );
                      }).toList(),




                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height/60,),
            Visibility(
              visible: _isVisible,
              child: Container(
                width: width/1.2,
                child: Theme(
                  data: new ThemeData(
                    primaryColor: Colors.black12,
                    primaryColorDark: Colors.black12,
                  ),
                  child: Column(
                    children: <Widget>[
                      Text("Enter Details for Shipping",style: TextStyle(color: Colors.black45,fontSize: height/60),),
                      Divider(),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: new TextField(
                              decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide: new BorderSide(color: Colors.teal)),
                                hintText: 'house no',
                                labelText: 'House No',
                                //suffixText: _myseletion,
                              ),
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          SizedBox(
                            width: width/60,
                          ),
                          Expanded(
                            child: new TextField(
                              decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide: new BorderSide(color: Colors.teal)),
                                hintText: 'street no',
                                labelText: 'Street No',
                                //suffixText: _myseletion,
                              ),
                              keyboardType: TextInputType.text,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height/60,),
                      new TextField(
                        decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          hintText: 'city',
                          labelText: 'City',
                          //suffixText: _myseletion,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: height/60,),
                      new TextField(
                        decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          hintText: 'country',
                          labelText: 'Country',
                          //suffixText: _myseletion,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: height/60,),
                      new TextField(
                        decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          hintText: 'country',
                          labelText: 'Country',
                          //suffixText: _myseletion,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: height/60,),
                      InternationalPhoneNumberInput.withCustomBorder(
                        onInputChanged: (PhoneNumber number) {
                          print(number.phoneNumber);
                        },
                        isEnabled: true,
                        autoValidate: true,
                        formatInput: true,
                        hintText: 'Invalid phone number',
                        inputBorder: OutlineInputBorder(),
                        onInputValidated: (bool value) {
                          print(value);
                        },
                      ),

//                      TelInput(
//                        dialCode: '+852',
//                        includeDialCode: true,
//                        onChange: (String phoneNumber) => print('phoneNumber: $phoneNumber'),
//                      )

                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: _shops,
              child:   Container(
                width: width/1.2,
                color: Colors.black12,
                child: DropdownButtonHideUnderline(
                  child: Padding(
                    padding: const EdgeInsets.only(left:18.0,right: 0),
                    child: ButtonTheme(
                      child: DropdownButton<String>(
                        hint: Text("Select NearBy Shop"),
                        value: slectshop,
                        onChanged: (String newValueSelected) {
                          setState(() {
                            this.slectshop = newValueSelected;
                          });
                        },

                        items: _nearbyShops.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem,style: TextStyle(color: Color(0xff323031), letterSpacing: 0,fontSize: height/60),),
                          );
                        }).toList(),





                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height/60,),
            Container(
              width: width/1.2,

              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(10),
                    bottomLeft: const Radius.circular(10),
                    topRight: const Radius.circular(10),
                    bottomRight: const Radius.circular(10),
                  )
              ),
              child: new TextField(
                decoration: new InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Enter Comment',
                  labelText: 'Comments (optional)',
                  suffixText: _myseletion,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 5,
              ),
            ),
            SizedBox(height: height/60,),
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
                  "Submit",
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


          ],
        ),
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
    await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber);
    String parsableNumber = number.parseNumber();

    print(parsableNumber);
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._Selectedoptions = newValueSelected;
    });
  }



  bool _isVisible = false;

  bool _shops = false;


//  void _onDropDownItem(String newValueSelected) {
//    setState(() {
//      this.pickupselected = newValueSelected;
//
//      if (newValueSelected == "Shipping")
//        {
//          _isVisible = !_isVisible;
//
//        }
//
//    });
//  }
}
