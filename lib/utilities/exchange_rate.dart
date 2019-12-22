import 'dart:ffi';

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

class ExchangeRatePage extends StatelessWidget {
  final String data;
  final _mainColor = HexColor("44A7DA");
  final _moneyColor = HexColor("EE2E2E");
  final _noColor = Colors.white;
  final _sizeHeighContainer = 30.0;
  final _sizeWidthContainer = 350.0;
  final _styleText = TextStyle(color: HexColor("045077"),fontSize: 14,);
  final _boxDecorationTittle = BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(3.0),topRight: Radius.circular(3.0)),color: HexColor("44A7DA").withOpacity(0.52),border: Border.all(width: 2.0, color: HexColor("44A7DA")));
  final _boxDecoration = BoxDecoration(borderRadius: BorderRadius.circular(0.0),border: Border.all(width: 2.0, color: HexColor("44A7DA")));

  
  ExchangeRatePage({
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
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Quy đổi nhanh",
                      style: TextStyle(
                        color: _noColor,
                        fontSize: 14,
                      ),
                    ),
                    Icon(
                      Icons.crop_rotate,
                      color: _noColor,
                      size: 20,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: _mainColor),
              ),
              Container(
                width: 350,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Thời gian cập nhật",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "02/11/2019",
                      style: TextStyle(
                        color: _moneyColor,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              Container(
                width: 350,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " Mã NT",
                            style: _styleText,
                          ),
                          Text(
                            "Mua CK   ",
                            style: _styleText,
                          ),
                          Text(
                            "Mua MT       ",
                            style: _styleText,
                          ),
                          Text(
                            "Bán      ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecorationTittle
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " USD1",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,260.00 ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " USD2",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "        0         ",
                            style: _styleText,
                          ),
                          Text(
                            "        0        ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " USD3",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00 ",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00 ",
                            style: _styleText,
                          ),
                          Text(
                            "23,260.00 ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " GDP ",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,260.00 ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " HKD ",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,260.00 ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " GHF ",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,260.00 ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " JPY  ",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,260.00 ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " THB ",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,260.00 ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " AUD ",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,260.00 ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration
                    ),
                    Container(
                      width: _sizeWidthContainer,
                      height: _sizeHeighContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " CAD ",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,140.00",
                            style: _styleText,
                          ),
                          Text(
                            "23,260.00 ",
                            style: _styleText,
                          ),
                        ],
                      ),
                      decoration: _boxDecoration
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
  
}
