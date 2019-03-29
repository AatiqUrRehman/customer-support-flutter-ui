import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrderPage(),
    );
  }
}

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        title: Text(
          "Order # 1454",
          style: TextStyle(fontSize: 18),
        ),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Color.fromRGBO(250, 250, 250, 1),
            height: 260,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return _buildItems(index);
              },
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                color: Color.fromRGBO(250, 250, 250, 1),
                padding: EdgeInsets.only(left: 12, right: 12, top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Mercury Watch',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      child: new InkWell(
                        onTap: () => print('hello'),
                        child: new Container(
                          //width: 100.0,
                          height: 35,
                          width: 70,
                          decoration: new BoxDecoration(
                            color: Color.fromRGBO(35, 188, 126, 1),
                            borderRadius: new BorderRadius.circular(14),
                          ),
                          child: new Center(
                            child: new Text(
                              'Paid',
                              style: new TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'by ZIIRO',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Description',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 12,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: <Widget>[
                      Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,"),
                      SizedBox(
                        height: 14,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: RaisedGradientButton(
                    child: Text(
                      'Not clear? We have a chat',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {
                      print('button clicked');
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildItems(int index) {
    return new Container(
      child: new Row(
        children: [
          new Row(children: [
            Container(
              padding: EdgeInsets.all(12),
              color: Colors.white,
              child: new ClipRRect(
                borderRadius: new BorderRadius.circular(4.0),
                child: Image.asset(
                  'assets/images/img${index}.jpg',
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = 280,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: new BorderRadius.all(Radius.circular(32)),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(230, 80, 154, 1),
            Color.fromRGBO(140, 44, 172, 1),
          ])),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}
