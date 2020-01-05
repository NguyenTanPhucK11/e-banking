import 'package:e_banking/transaction/beneficiaries.dart';
import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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

class AccountOriginated extends StatelessWidget {
  final String data;
  final _mainColor = HexColor("44A7DA");
  final _moneyColor = HexColor("EE2E2E");
  final _noColor = Colors.white;
  AccountOriginated({
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30),
            ),
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
                    GradientText("  Chuyển",
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              _mainColor,
                              HexColor("37026E"),
                            ]),
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                    GradientText("     khoản",
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              _mainColor,
                              Colors.black,
                            ]),
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: 335,
                  height: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            width: 320,
                            height: 40,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 18.0,
                                ),
                                Icon(
                                  Icons.account_box,
                                  size: 20,
                                  // color: _mainColor,
                                ),
                                Text(
                                  "Tên chủ tài khoản",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(24.0, .0, 24.0, .0),
                            child: TextField(
                              style: new TextStyle(color: _mainColor),
                              textInputAction:
                                  TextInputAction.send, // not number
                              textCapitalization: TextCapitalization.characters,
                              decoration: InputDecoration(
                                  hintText: 'Nhập tên chủ tài khoản'),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            width: 320,
                            height: 40,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 20.0,
                                ),
                                Icon(
                                  Icons.account_balance,
                                  size: 20,
                                  // color: _mainColor,
                                ),
                                Text(
                                  "Tài khoản nguồn",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(24.0, .0, 24.0, .0),
                            child: TextField(
                              style: new TextStyle(color: _mainColor),
                              textInputAction:
                                  TextInputAction.send, // not number
                              textCapitalization: TextCapitalization.characters,
                              decoration: InputDecoration(
                                  hintText: 'Nhập số tài khoản'),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            width: 320,
                            height: 40,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 18.0,
                                ),
                                Icon(
                                  Icons.attach_money,
                                  size: 20,
                                  // color: _mainColor,
                                ),
                                Text(
                                  "Số dư",
                                  style: TextStyle(
                                    color: _mainColor,
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
                            alignment: Alignment.topRight,
                            width: 320,
                            height: 40,
                            child: Text(
                              "2,000,000 VND",
                              style: TextStyle(
                                color: _moneyColor,
                                fontSize: 20,
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(width: 2.0, color: _mainColor),
                    color: _noColor,
                  ),
                ),
                Positioned(
                  top: -12,
                  left: 15,
                  child: Container(
                    child: Text(
                      "Tài khoản nguồn",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: _mainColor,
                        fontSize: 20,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: _mainColor),
                      borderRadius: BorderRadius.circular(8.0),
                      color: _noColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 250,
              height: 40,
              child: RaisedButton(
                child: Text(
                  'Tiếp tục',
                  style: TextStyle(fontSize: 20, color: _noColor),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BeneficiariesTransaction(
                          data: 'Hello there from the first page!'),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                color: _mainColor,
                elevation: 20.0,
              ),
            ),
          ],
        ),
       ),
      ),
    );
  }
}
