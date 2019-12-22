import 'package:e_banking/recharge_phone/choose_type_card.dart';
import 'package:e_banking/transaction/account_originated.dart';
import 'package:e_banking/utilities/utilitis.dart';
import 'package:e_banking/notification/promotion.dart';
import 'package:e_banking/beneficiaries/beneficiaries.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'account/account.dart';

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

class HomePage extends StatelessWidget {
  final String data;
  final _mainColor = HexColor("44A7DA");
  final _noColor = Colors.white;
  final _blackColor = Colors.black;

  HomePage({
    Key key,
    @required this.data,
  }) : super(key: key);

  double _width = 110;
  double _height = 110;
  double _padding = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _noColor,
      appBar: AppBar(
        title: Text('Log out'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('NAVI',
                    style: TextStyle(
                      fontFamily: 'Righteous',
                      fontSize: 65,
                      fontWeight: FontWeight.bold,
                      color: _mainColor,
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(12.0),
                    ),
                    Text('Bank',
                        style: TextStyle(
                          fontFamily: 'Righteous',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: _blackColor,
                        )),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
            ),
            Column(children: [
              Row(
                // mainAxisAlignment : MainAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: _width,
                    height: _height,
                    child: Transform.rotate(
                      angle: pi / 4,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                                width: 3.0, color: _mainColor)),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => AccountPage(
                                  data: 'Hello there from the first page!'),
                            ),
                          );
                        },
                        color: _noColor,
                        elevation: 20.0,
                        child: Transform.rotate(
                            angle: -pi / 4,
                            child: Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.account_balance_wallet,
                                      size: 45.0,
                                      color: _mainColor,
                                    ),
                                    Text(
                                      "Tài khoản",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: _mainColor),
                                    ),
                                  ]),
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(_padding),
                  ),
                  Container(
                    width: _width,
                    height: _height,
                    child: Transform.rotate(
                      angle: pi / 4,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                                width: 3.0, color: _mainColor)),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => AccountOriginated(
                                  data: 'Hello there from the first page!'),
                            ),
                          );
                        },
                        color: _noColor,
                        elevation: 20.0,
                        child: Transform.rotate(
                            angle: -pi / 4,
                            child: Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.replay,
                                      size: 45.0,
                                      color: _mainColor,
                                    ),
                                    Text(
                                      "Chuyển tiền",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: _mainColor),
                                    ),
                                  ]),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: _width,
                height: _height,
                child: Transform.rotate(
                  angle: pi / 4,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side:
                            BorderSide(width: 3.0, color: _mainColor)),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ChooseTypeCard(
                              data: 'Hello there from the first page!'),
                        ),
                      );
                    },
                    color: _noColor,
                    elevation: 20.0,
                    child: Transform.rotate(
                        angle: -pi / 4,
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.account_balance_wallet,
                                  size: 45.0,
                                  color: _mainColor,
                                ),
                                Text(
                                  "Nạp tiền",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: _mainColor),
                                ),
                                Text(
                                  "điện thoại",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: _mainColor),
                                ),
                              ]),
                        )),
                  ),
                ),
              ),
              Row(
                // mainAxisAlignment : MainAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: _width,
                    height: _height,
                    child: Transform.rotate(
                      angle: pi / 4,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                                width: 3.0, color: _mainColor)),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => UtilitiesPage(
                                  data: 'Hello there from the first page!'),
                            ),
                          );
                        },
                        color: _noColor,
                        elevation: 20.0,
                        child: Transform.rotate(
                            angle: -pi / 4,
                            child: Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add_call,
                                      size: 45.0,
                                      color: _mainColor,
                                    ),
                                    Text(
                                      "Tiện ích",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: _mainColor),
                                    ),
                                  ]),
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(_padding),
                  ),
                  Container(
                    width: _width,
                    height: _height,
                    child: Transform.rotate(
                      angle: pi / 4,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                                width: 3.0, color: _mainColor)),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => BeneficiariesPage(
                                  data: 'Hello there from the first page!'),
                            ),
                          );
                        },
                        color: _noColor,
                        elevation: 20.0,
                        child: Transform.rotate(
                            angle: -pi / 4,
                            child: Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.perm_contact_calendar,
                                      size: 45.0,
                                      color: _mainColor,
                                    ),
                                    Text(
                                      "Thụ hưởng",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: _mainColor),
                                    ),
                                  ]),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: _width,
                height: _height,
                child: Transform.rotate(
                  angle: pi / 4,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side:
                            BorderSide(width: 3.0, color: _mainColor)),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PromotionPage(
                              data: 'Hello there from the first page!'),
                        ),
                      );
                    },
                    color: _noColor,
                    elevation: 20.0,
                    child: Transform.rotate(
                        angle: -pi / 4,
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.notifications_active,
                                  size: 45.0,
                                  color: _mainColor,
                                ),
                                Text(
                                  "Thông báo",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: _mainColor),
                                ),
                              ]),
                        )),
                  ),
                ),
              ),
            ])

            // Row(

            // children : [Text(
            //   'NAVI',
            //   style : TextStyle(
            //     fontSize: 65,
            //     fontFamily: 'Righteous',
            //     color: _mainColor ),
            // ),
            // Text(
            //   'Bank',
            //   style : TextStyle(
            //     fontSize: 30,
            //     fontFamily: 'Righteous',
            //     color: _mainColor ),
            // ),
            // ]
            // )

            // Text(
            //   data,
            //   style : TextStyle(fontSize: 20),
            // ),
          ],
        ),
      ),
    );
  }
}
