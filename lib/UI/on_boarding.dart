import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

class on_boarding extends StatefulWidget {
  @override
  _on_boardingState createState() => _on_boardingState();
}

class _on_boardingState extends State<on_boarding> {


  final List<String> images = [
    "assets/slide_1.png",
    "assets/slide_1.png",
    "assets/slide_1.png",
    "assets/slide_1.png"
  ];

  final List<String> text0 = [
    "Currency Exchanger",
    "Enjoy teaching...",
    "Showcase your skills",
    "Friendship is great"
  ];

  final List<String> text1 = [
    "Fast-Easy-Secure",
    "Find best meals in your area, simply",
    "Have fun while eating your relatives and more",
    "Meet new friends from all over the world"
  ];

  final IndexController controller = IndexController();
  int _slideIndex = 0;
  @override
  Widget build(BuildContext context) {

    TransformerPageView transformerPageView = TransformerPageView(
        pageSnapping: true,
        onPageChanged: (index) {
          setState(() {
            this._slideIndex = index;
          });
        },
        loop: false,
        controller: controller,
        transformer: new PageTransformerBuilder(
            builder: (Widget child, TransformInfo info) {
              return new Material(
                //color: Colors.grey,
                elevation: 8.0,
                textStyle: new TextStyle(color: Colors.white),
                borderRadius: new BorderRadius.circular(12.0),
                child: new Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new ParallaxContainer(
                          child: new Image.asset(
                            images[info.index],
                            fit: BoxFit.contain,
                            height: 200,
                          ),
                          position: info.position,
                          translationFactor: 400.0,
                        ),
                        SizedBox(
                          height: 45.0,
                        ),
                        new ParallaxContainer(
                          child: new Text(
                            text0[info.index],
                            style: new TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 34.0,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                          position: info.position,
                          opacityFactor: .8,
                          translationFactor: 400.0,
                        ),
                        SizedBox(
                          height: 45.0,
                        ),
                        new ParallaxContainer(
                          child: new Text(
                            text1[info.index],
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 28.0,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                          position: info.position,
                          translationFactor: 300.0,
                        ),
                        SizedBox(
                          height: 55.0,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
        itemCount: 4);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xff00A6A6), Color(0xff4BB3FD)])),
          child: transformerPageView),
    );
  }
}
