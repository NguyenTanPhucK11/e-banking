import 'dart:ffi';

import 'package:e_banking/utilities/interest_vnd.dart';
import 'package:flutter/material.dart';

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

class ChangeInfoPage extends StatelessWidget {
  final String data;
  final _mainColor = HexColor("44A7DA");
  final _noColor = Colors.white;
  final _sizeHeighContainer = 30.0;
  final _sizeWidthContainer = 350.0;
  final _boxDecorationTittle = BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(3.0), topRight: Radius.circular(3.0)),
      color: HexColor("44A7DA").withOpacity(0.52),
      border: Border.all(width: 2.0, color: HexColor("44A7DA")));
  final _boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(0.0),
      border: Border.all(width: 2.0, color: HexColor("44A7DA")));

  ChangeInfoPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _noColor,
      appBar: AppBar(
        title: Text('Tài khoản tiết kiệm'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
            Widget>[
          Padding(
                  padding: EdgeInsets.all(20),
                ),
          Container(
            width: 350,
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: _sizeWidthContainer,
                  height: _sizeHeighContainer * 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hotline : 19001000",
                        style: TextStyle(
                            color: HexColor("045077"),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  decoration: _boxDecorationTittle,
                ),
                Container(
                  width: _sizeWidthContainer,
                  height: _sizeHeighContainer * 10,
                  decoration: _boxDecoration,
                ),
                Container(
                  width: _sizeWidthContainer,
                  height: _sizeHeighContainer * 1.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: _sizeWidthContainer - _sizeWidthContainer*0.28,
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                            disabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                borderSide: BorderSide(color: Colors.black)),
                            // border: OutlineInputBorder(
                            //     borderRadius:
                            //         BorderRadius.all(Radius.circular(5.0)),
                            //     borderSide: BorderSide(color: Colors.black)),
                            labelText: "",
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(0.0),
                              // child: Icon(
                              //   Icons.vpn_key,
                              //   color: Colors.grey,
                              // ), // icon is 48px widget.
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        height: MediaQuery.of(context).size.height * 0.0625 - 10,
                        child: RaisedButton(
                          child: Text(
                            'Gửi',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          onPressed: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         SecondPage(data: 'Hello there from the first page!'),
                            //   ),
                            // );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(8)),
                          ),
                          color: _mainColor,
                          elevation: 20.0,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                      border:
                          Border.all(width: 2.0, color: HexColor("44A7DA"))),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
