import 'dart:ffi';

import 'package:e_banking/utilities/interest_dollars.dart';
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

class InterestVNDPage extends StatelessWidget {
  final String data;
  final _mainColor = HexColor("44A7DA");
  final _noColor = Colors.white;
  final _moneyColor = HexColor("EE2E2E");
  final _sizeHeighContainer = 30.0;
  final _sizeWidthContainer = 350.0;
  final _styleText = TextStyle(color: Colors.black,fontSize: 14,);
  final _boxDecorationTittle = BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(3.0), topRight: Radius.circular(3.0)),
      color: HexColor("44A7DA").withOpacity(0.52),
      border: Border.all(width: 2.0, color: HexColor("44A7DA")));
  final _boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(0.0),
      border: Border.all(width: 2.0, color: HexColor("44A7DA")));

  InterestVNDPage({
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
               Padding(
                  padding: EdgeInsets.all(30),
                ),
              Container(
                width: 350,
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.41,
                            height: MediaQuery.of(context).size.height * 0.0625,
                            child: RaisedButton(
                              child: Text(
                                'Việt Nam Đồng',
                                style: TextStyle(
                                    fontSize: 20, color: _noColor),
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
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0)),
                              ),
                              color: _mainColor,
                              
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.41,
                            height: MediaQuery.of(context).size.height * 0.0625,
                            child: RaisedButton(
                              child: Text(
                                'Đô la Mỹ',
                                style: TextStyle(
                                    fontSize: 20, color: _mainColor),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        InterestDollarsPage(data: 'Hello there from the first page!'),
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
                      height: _sizeHeighContainer * 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Tính toán lãi xuất",
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
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " Hình thức",
                            style: _styleText,
                          ),
                          Text(
                            "Kỳ hạn",
                            style: _styleText,
                          ),
                          Text(
                            "Lãi xuất ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration,
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " Tiết kiệm cá nhân",
                            style: _styleText,
                          ),
                          Text(
                            "5 tháng                    ",
                            style: _styleText,
                          ),
                          Text(
                            "0.1% ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration,
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " Tiết kiệm cá nhân",
                            style: _styleText,
                          ),
                          Text(
                            "Không kỳ hạn                   ",
                            style: _styleText,
                          ),
                          Text(
                            "0.1% ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration,
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " Tiết kiệm cá nhân",
                            style: _styleText,
                          ),
                          Text(
                            "1 tháng                    ",
                            style: _styleText,
                          ),
                          Text(
                            "0.1% ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration,
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " Tiết kiệm cá nhân",
                            style: _styleText,
                          ),
                          Text(
                            "2 tháng                    ",
                            style: _styleText,
                          ),
                          Text(
                            "0.2% ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration,
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " Tiết kiệm cá nhân",
                            style: _styleText,
                          ),
                          Text(
                            "3 tháng                    ",
                            style: _styleText,
                          ),
                          Text(
                            "0.2% ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration,
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " Tiết kiệm cá nhân",
                            style: _styleText,
                          ),
                          Text(
                            "164 ngày                    ",
                            style: _styleText,
                          ),
                          Text(
                            "0.2% ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration,
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " Tiết kiệm cá nhân",
                            style: _styleText,
                          ),
                          Text(
                            "12 tháng(*)                    ",
                            style: _styleText,
                          ),
                          Text(
                            "0.2% ",
                            style: _styleText,
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
