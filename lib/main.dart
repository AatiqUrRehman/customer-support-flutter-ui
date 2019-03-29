import 'package:flutter/material.dart';
import './order_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
    );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void navigateToOrderPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) => OrderPage()),
    );
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double width_90 = width * 0.95;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () {},
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        title: Text(
          "Customer Support",
          style: TextStyle(fontSize: 18),
        ),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          buildContainerItem(width_90),
        ],
      ),
    );
  }

  Container buildContainerItem(double width_90) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Container(
            width: width_90,
            height: 160,
            margin: EdgeInsets.only(top: 10, bottom: 24),
            decoration: BoxDecoration(
              borderRadius: new BorderRadius.all(Radius.circular(6)),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(200, 144, 251, 1),
                Color.fromRGBO(241, 68, 128, 1)
              ], begin: Alignment.bottomLeft, end: Alignment.topRight),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "I'd like to know",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Details about \nmy orders",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                        padding: new EdgeInsets.only(right: 34, bottom: 32),
                        icon: new Icon(
                          Icons.navigate_next,
                          size: 60.0,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          navigateToOrderPage();
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: width_90,
            height: 160,
            margin: EdgeInsets.only(top: 8, bottom: 24),
            decoration: BoxDecoration(
              borderRadius: new BorderRadius.all(Radius.circular(6)),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(243, 191, 136, 1),
                Color.fromRGBO(251, 143, 152, 1)
              ], begin: Alignment.bottomLeft, end: Alignment.topRight),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Unfortunately",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "I have payment \nissues",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                        padding: new EdgeInsets.only(right: 34, bottom: 32),
                        icon: new Icon(
                          Icons.navigate_next,
                          size: 60.0,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          navigateToOrderPage();
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: width_90,
            height: 160,
            margin: EdgeInsets.only(top: 8, bottom: 12),
            decoration: BoxDecoration(
              borderRadius: new BorderRadius.all(Radius.circular(6)),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(149, 72, 176, 1),
                Color.fromRGBO(104, 133, 240, 1)
              ], begin: Alignment.bottomLeft, end: Alignment.topRight),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "More answers in",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "frequently\nasked questions",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                        padding: new EdgeInsets.only(right: 34, bottom: 32),
                        icon: new Icon(
                          Icons.navigate_next,
                          size: 60.0,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          navigateToOrderPage();
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
