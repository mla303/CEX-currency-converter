import 'package:cex_mobileapp/UI/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Contact_us extends StatefulWidget {
  @override
  _Contact_us createState() => _Contact_us();
}

class _Contact_us extends State<Contact_us> {
  String name= 'Contact Us';
  String phoneNumber= '+888 32 3535 5252';
  String email = 'alitalib16867@gmail.com';
  String address = 'No.6, Sector12, happen east Road, Uk';


  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      //backgroundColor: Color(0xfff0fff3),

      body: Column(
        children: <Widget>[
          SizedBox(height: height/10,),

          SizedBox(height: height/60,),
          Text(
            '$name',
            style: TextStyle(
                color: Colors.black,
                fontSize: height / 30,
                fontWeight: FontWeight.bold),
          ),

          Divider(),



          Container(
            width: width/1.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                SizedBox(height: height/10,),

                Text("Email",style: TextStyle(fontSize: height/60,color: Colors.black45),),
                SizedBox(height: 4),
                Text('$email',style: TextStyle(fontSize: height/45),),
//
                SizedBox(height: height/30,),

                Text("Contact No.",style: TextStyle(fontSize: height/60,color: Colors.black45),),
                SizedBox(height: 4),
                Text('$phoneNumber',style: TextStyle(fontSize: height/45),),

                SizedBox(height: height/30,),

                Text("Address",style: TextStyle(fontSize: height/60,color: Colors.black45),),
                SizedBox(height: 4),
                Text('$address',style: TextStyle(fontSize: height/45),),

                SizedBox(height: height/15,),



              ],
            ),
          ),
          Container(
width: width/1.1,
            height: height/4,
            decoration: BoxDecoration(
                image: DecorationImage(
                  //colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.dstATop),
                    image: AssetImage('assets/map.png'),
                    fit: BoxFit.fill
                )
            ),
          ),
        ],
      ),
    );
  }
}
