import 'dart:ffi';

import 'package:e_banking/notification/exchange.dart';
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

class PromotionPage extends StatelessWidget {
  final String data;
  final _mainColor = HexColor("44A7DA");
  final _noColor = Colors.white;
  final _sizeHeighContainer = 30.0;
  final _sizeWidthContainer = 350.0;
  final _styleText = TextStyle(
    color: Colors.black,
    fontSize: 14,
  );
  final _boxDecorationTittle = BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(3.0), topRight: Radius.circular(3.0)),
      color: HexColor("44A7DA").withOpacity(0.52),
      border: Border.all(width: 2.0, color: HexColor("44A7DA")));
  final _boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(0.0),
      border: Border.all(width: 2.0, color: HexColor("44A7DA")));

  PromotionPage({
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
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
            Widget>[
           Padding(
                  padding: EdgeInsets.all(20),
                ),
          Container(
            width: 350,
            height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.27,
                        height: MediaQuery.of(context).size.height * 0.0625,
                        child: RaisedButton(
                          child: Text(
                            'Tất cả',
                            style: TextStyle(
                                fontSize: 20, color: _mainColor),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => InterestVNDPage(
                            //         data: ''),
                            //   ),
                            // );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0)),
                          ),
                          color: _noColor,
                          elevation: 10.0,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.27,
                        height: MediaQuery.of(context).size.height * 0.0625,
                        child: RaisedButton(
                          child: Text(
                            'Khuyến mãi',
                            style: TextStyle(fontSize: 20, color: _noColor),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         SecondPage(data: 'Hello there from the first page!'),
                            //   ),
                            // );
                          },
                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.only(
                          //       topRight: Radius.circular(10.0),
                          //       bottomRight: Radius.circular(10.0)),
                          // ),
                          color: _mainColor,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.27,
                        height: MediaQuery.of(context).size.height * 0.0625,
                        child: RaisedButton(
                          child: Text(
                            'Giao dịch',
                            style: TextStyle(fontSize: 20, color: _mainColor),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ExchangedPage(
                                    data: 'Hello there from the first page!'),
                              ),
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0)),
                          ),
                          color: _noColor,
                          elevation: 10.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: _sizeWidthContainer,
                  height: _sizeHeighContainer * 17,
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
                        height: _sizeHeighContainer * 6,
                        child: Column(
                          children: <Widget>[
                            Image.asset('img/Promotion1.png'),
                            RaisedButton(
                              child: Text(
                                'Đừng bỏ lỡ ! Cơ hội cuối để nhận 1 chiếc xe SUV SUBARU giá 1 tỷ đồng khi'
                                ' gia hạn K + 3 tháng. Số điện thoại hỗ trợ : 1900 1000',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              color: _noColor,
                              elevation: 10.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: _sizeWidthContainer * 0.8,
                        height: _sizeHeighContainer * 6,
                        child: Column(
                          children: <Widget>[
                            Image.asset('img/Promotion3.png'),
                            RaisedButton(
                              child: Text(
                                'Đừng bỏ lỡ ! Cơ hội cuối để nhận 1 chiếc xe SUV SUBARU giá 1 tỷ đồng khi'
                                ' gia hạn K + 3 tháng. Số điện thoại hỗ trợ : 1900 1000',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              color: _noColor,
                              elevation: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: _boxDecoration,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
