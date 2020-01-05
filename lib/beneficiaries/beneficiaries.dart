import 'dart:ffi';

import 'package:e_banking/utilities/interest_vnd.dart';
import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class BeneficiariesPage extends StatelessWidget {
  final String data;
  final _mainColor = HexColor("44A7DA");
  final _noColor = Colors.white;
  final _sizeHeighContainer = 30.0;
  final _sizeWidthContainer = 350.0;
  final _boxDecorationTittle = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      color: HexColor("44A7DA").withOpacity(1),
      border: Border.all(width: 2.0, color: HexColor("44A7DA")));
  final _boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(0.0),
      border: Border.all(width: 2.0, color: HexColor("44A7DA")));

  BeneficiariesPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _noColor,
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child :Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
            Widget>[
          Padding(
            padding: EdgeInsets.all(20),
          ),
          Container(
            width: 350,
            height: 550,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('Navi',
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 18,
                          color: _mainColor,
                          shadows: [
                            Shadow(
                              blurRadius: 50.0,
                              color: _mainColor,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                        )),
                    Text('      bank',
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 14,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              blurRadius: 50.0,
                              color: Colors.black,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                        )),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                ),
                RotatedBox(
                    quarterTurns: 1,
                    child: new Container(
                      width: 75,
                      height: 3,
                      color: _mainColor,
                    )),
                Column(
                  children: <Widget>[
                    GradientText("Quản lý",
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              _mainColor,
                              HexColor("37026E"),
                            ]),
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                    GradientText("   thụ hưởng",
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              _mainColor,
                              Colors.black,
                            ]),
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                  ],
                ),
              ],
            ),
            Padding(
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  width: _sizeWidthContainer,
                  height: _sizeHeighContainer * 13,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: _sizeWidthContainer * 0.9,
                        height: _sizeHeighContainer * 1.2,
                        child: TextFormField(
                          decoration: InputDecoration(
                            disabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                borderSide: new BorderSide(color: _mainColor)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                                borderSide: new BorderSide(color: _mainColor)),
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Icon(
                                Icons.vpn_key,
                                color: Colors.grey,
                              ), // icon is 48px widget.
                            ),
                            labelText: "Tìm kiếm",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 180),
                        child: Text(
                          '02/11/2019',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: _sizeWidthContainer * 0.8,
                          height: _sizeHeighContainer * 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 50.0,
                                height: 50.0,
                                padding: const EdgeInsets.all(
                                    15.0), //I used some padding without fixed width and height
                                decoration: new BoxDecoration(
                                  shape: BoxShape
                                      .circle, // You can use like this way or like the below line
                                  //borderRadius: new BorderRadius.circular(30.0),
                                  color: Colors.green,
                                ),
                                child: new Text(" K",
                                    style: new TextStyle(
                                        color: _noColor,
                                        fontSize:
                                            20.0)), // You can add a Icon instead of text also, like below.
                                //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
                              ), //............
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: <Widget>[
                                  Text(""),
                                  Text(
                                    "Khoa",
                                    style: TextStyle(
                                        fontSize: 14, color: _noColor),
                                  ),
                                  Text(
                                    "TK 0500 0000",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          ),
                          decoration: _boxDecorationTittle),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: _sizeWidthContainer * 0.8,
                          height: _sizeHeighContainer * 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 50.0,
                                height: 50.0,
                                padding: const EdgeInsets.all(
                                    15.0), //I used some padding without fixed width and height
                                decoration: new BoxDecoration(
                                  shape: BoxShape
                                      .circle, // You can use like this way or like the below line
                                  //borderRadius: new BorderRadius.circular(30.0),
                                  color: HexColor("268AFF"),
                                ),
                                child: new Text(" K",
                                    style: new TextStyle(
                                        color: _noColor,
                                        fontSize:
                                            20.0)), // You can add a Icon instead of text also, like below.
                                //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
                              ), //............
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: <Widget>[
                                  Text(""),
                                  Text(
                                    "Khiêm leo",
                                    style: TextStyle(
                                        fontSize: 14, color: _noColor),
                                  ),
                                  Text(
                                    "TK 0500 0000",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          ),
                          decoration: _boxDecorationTittle),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: _sizeWidthContainer * 0.8,
                          height: _sizeHeighContainer * 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 50.0,
                                height: 50.0,
                                padding: const EdgeInsets.all(
                                    15.0), //I used some padding without fixed width and height
                                decoration: new BoxDecoration(
                                  shape: BoxShape
                                      .circle, // You can use like this way or like the below line
                                  //borderRadius: new BorderRadius.circular(30.0),
                                  color: HexColor("FA5C65"),
                                ),
                                child: new Text("M",
                                    style: new TextStyle(
                                        color: _noColor,
                                        fontSize:
                                            20.0)), // You can add a Icon instead of text also, like below.
                                //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
                              ), //............
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: <Widget>[
                                  Text(""),
                                  Text(
                                    "Minh heo",
                                    style: TextStyle(
                                        fontSize: 14, color: _noColor),
                                  ),
                                  Text(
                                    "TK 0500 0000",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          ),
                          decoration: _boxDecorationTittle),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: _sizeWidthContainer * 0.8,
                          height: _sizeHeighContainer * 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 50.0,
                                height: 50.0,
                                padding: const EdgeInsets.all(
                                    15.0), //I used some padding without fixed width and height
                                decoration: new BoxDecoration(
                                  shape: BoxShape
                                      .circle, // You can use like this way or like the below line
                                  //borderRadius: new BorderRadius.circular(30.0),
                                  color: HexColor("FD9A28"),
                                ),
                                child: new Text(" P",
                                    style: new TextStyle(
                                        color: _noColor,
                                        fontSize:
                                            20.0)), // You can add a Icon instead of text also, like below.
                                //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
                              ), //............
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: <Widget>[
                                  Text(""),
                                  Text(
                                    "Phúc",
                                    style: TextStyle(
                                        fontSize: 14, color: _noColor),
                                  ),
                                  Text(
                                    "TK 0500 0000",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  )
                                ],
                              ),
                            ],
                          ),
                          decoration: _boxDecorationTittle),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(3.0),
                          topRight: Radius.circular(3.0)),
                      color: _mainColor.withOpacity(0.1),
                      border: Border.all(width: 2.0, color: _mainColor)),
                ),
              ],
            ),
          )
        ]),
      ),
      ),
    );
  }
}
