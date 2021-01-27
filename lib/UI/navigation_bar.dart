
import 'package:cex_mobileapp/UI/Contact_Us.dart';
import 'package:cex_mobileapp/UI/currency_rates.dart';
import 'package:cex_mobileapp/UI/home.dart';
import 'package:cex_mobileapp/UI/placeYourOrder.dart';
import 'package:cex_mobileapp/UI/profile.dart';
import 'package:flutter/material.dart';

import 'm_orders.dart';

class navigate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationBar();
  }
}
class NavigationBar extends State<navigate> {


  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedTab = 1;
  final _pageOptions = [

    HomePage(),
    currency_rates(),
    PlaceYourOrder(),
    myorders(),
    Contact_us(),
    profile()


  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return MaterialApp(




     theme: ThemeData(
          primarySwatch: Colors.grey,

          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.grey),
          )),
      home: Scaffold(



        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedTab,
          selectedItemColor: Colors.blue,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },


          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 22,),
              title: Text('Home',style: TextStyle(fontSize: height/70),),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/order.png',scale: 1.2,),
              title: Text('Rates',style: TextStyle(fontSize: height/70),),
            ),
            BottomNavigationBarItem(

              icon: Image.asset('assets/exchange.png',scale: 13,),
              title: Text('Place Order',style: TextStyle(fontSize: height/70),),
            ),
            BottomNavigationBarItem(

              icon: Icon(Icons.border_color,size: 22),
              title: Text('My Orders',style: TextStyle(fontSize: height/70),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone,size: 22),
              title: Text('Contact Us',style: TextStyle(fontSize: height/70),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 22),
              title: Text('Me',style: TextStyle(fontSize: height/70),),

            ),
          ],
        ),
      ),
    );
  }}