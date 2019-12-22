import 'package:e_banking/account/info_exchanged.dart';
import 'package:flutter/material.dart';
import 'account_saving.dart';
import 'account_loan.dart';

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

class PayAccountPage extends StatelessWidget {
  final String data;
  final _mainColor = HexColor("44A7DA");
  final _noColor = Colors.white;
  PayAccountPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _noColor,
      appBar: AppBar(
        title: Text('Thông tin giao dịch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30),
            ),
            Column(children: [
              Container(
                  width: 335,
                  height: 130,
                  child: Column(
                    children: [
                      Container(
                        width: 335,
                        height: 35,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0)),
                              side: BorderSide(width: 3.0, color: _mainColor)),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    InfoExchangedPage(data: ''),
                              ),
                            );
                          },
                          color: _mainColor,
                          elevation: 20.0,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.info,
                                  size: 20.0,
                                  color: _noColor,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                ),
                                Text(
                                  "Tài khoản thanh toán",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: _noColor,
                                      fontSize: 20),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(27.0),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 25.0,
                                  color: _noColor,
                                ),
                              ]),
                        ),
                      ),
                      Container(
                        width: 335,
                        height: 55,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(14.0)),
                              side: BorderSide(width: 3.0, color: _mainColor)),
                          onPressed: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => InfoExchangedPage(
                            //         data: 'Hello there from the first page!'),
                            //   ),
                            // );
                          },
                          color: _noColor,
                          elevation: 20.0,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Số dư khả dụng",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(15.0),
                                ),
                                Text("0.00 VND",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20)),
                              ]),
                        ),
                      )
                    ],
                  )),
              Container(
                  width: 335,
                  height: 130,
                  child: Column(
                    children: [
                      Container(
                        width: 335,
                        height: 35,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0)),
                              side: BorderSide(width: 3.0, color: _mainColor)),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => AccountSavingPage(
                                    data: 'Hello there from the first page!'),
                              ),
                            );
                          },
                          color: _mainColor,
                          elevation: 20.0,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.info,
                                  size: 20.0,
                                  color: _noColor,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                ),
                                Text(
                                  "Tài khoản tiết kiệm",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: _noColor,
                                      fontSize: 20),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(35.0),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 25.0,
                                  color: _noColor,
                                ),
                              ]),
                        ),
                      ),
                      Container(
                        width: 335,
                        height: 55,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(14.0)),
                              side: BorderSide(width: 3.0, color: _mainColor)),
                          onPressed: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => PayAccountPage(
                            //         data: 'Hello there from the first page!'),
                            //   ),
                            // );
                          },
                          color: _noColor,
                          elevation: 20.0,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Số dư khả dụng",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(15.0),
                                ),
                                Text("0.00 VND",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20)),
                              ]),
                        ),
                      )
                    ],
                  )),
              Container(
                  width: 335,
                  height: 100,
                  child: Column(
                    children: [
                      Container(
                        width: 335,
                        height: 35,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0)),
                              side: BorderSide(width: 3.0, color: _mainColor)),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => AccountLoanPage(
                                    data: 'Hello there from the first page!'),
                              ),
                            );
                          },
                          color: _mainColor,
                          elevation: 20.0,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.info,
                                  size: 20.0,
                                  color: _noColor,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                ),
                                Text(
                                  "Tài khoản tiền vay",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: _noColor,
                                      fontSize: 20),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(40.0),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 25.0,
                                  color: _noColor,
                                ),
                              ]),
                        ),
                      ),
                      Container(
                        width: 335,
                        height: 55,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(14.0)),
                              side: BorderSide(width: 3.0, color: _mainColor)),
                          onPressed: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => PayAccountPage(
                            //         data: 'Hello there from the first page!'),
                            //   ),
                            // );
                          },
                          color: _noColor,
                          elevation: 20.0,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Số dư khả dụng",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(15.0),
                                ),
                                Text("0.00 VND",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20)),
                              ]),
                        ),
                      )
                    ],
                  )),
            ])
          ],
        ),
      ),
    );
  }
}
