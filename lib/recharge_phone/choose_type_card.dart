import 'package:e_banking/recharge_phone/info_exchanged.dart';
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

class ChooseTypeCard extends StatelessWidget {
  final String data;
  final _mainColor = HexColor("44A7DA");
  final _noColor = Colors.white;
  final _moneyColor = HexColor("EE2E2E");
  ChooseTypeCard({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _noColor,
      appBar: AppBar(
        title: Text('Chuyển khoản'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
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
                      width: 70,
                      height: 3,
                      color: _mainColor,
                    )),
                Column(
                  children: <Widget>[
                    GradientText("Nạp tiền",
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              _mainColor,
                              HexColor("37026E"),
                            ]),
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    GradientText("     điện thoại",
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              _mainColor,
                              Colors.black,
                            ]),
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 335,
                  height: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            width: 320,
                            height: 30,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 20.0,
                                ),
                                Icon(
                                  Icons.account_balance,
                                  size: 20,
                                  color: _mainColor,
                                ),
                                Text(
                                  "Tài khoản nguồn",
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
                          Container(
                            width: 320,
                            height: 30,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 18.0,
                                ),
                                Icon(
                                  Icons.attach_money,
                                  size: 20,
                                  color: _mainColor,
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
                    border: Border.all(width: 3.0, color: _mainColor),
                    color: _noColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 335,
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: [
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
                                  color: _mainColor,
                                ),
                                Text(
                                  "Số điện thoại được nạp",
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 258,
                                height: 20,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [],
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3.0),
                                    color: HexColor("ECECF6")),
                              ),
                              Icon(
                                Icons.perm_contact_calendar,
                                color: _moneyColor,
                                size: 20,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 278,
                                height: 30,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Khoa Đăng",
                                      style: TextStyle(
                                        color: _mainColor,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Icon(
                                      Icons.perm_contact_calendar,
                                      color: _mainColor,
                                      size: 30,
                                    ),
                                    Text(
                                      "Khiêm Leo",
                                      style: TextStyle(
                                        color: _mainColor,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Icon(
                                      Icons.perm_contact_calendar,
                                      color: _mainColor,
                                      size: 30,
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  border:
                                      Border.all(width: 1.0, color: _mainColor),
                                  color: _noColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 25,
                              ),
                              Icon(
                                Icons.info,
                                color: _moneyColor,
                                size: 15,
                              ),
                              Text(
                                "Bỏ trống nếu nạp cho chính mình",
                                style: TextStyle(
                                  color: _moneyColor,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 25,
                              ),
                              Icon(
                                Icons.info,
                                color: _mainColor,
                                size: 15,
                              ),
                              Text(
                                "Mệnh giá",
                                style: TextStyle(
                                  color: _mainColor,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 90,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    "10.000đ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3.0),
                                    color: HexColor("A3A3BF")),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    "20.000đ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3.0),
                                    color: HexColor("ECECF6")),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    "30.000đ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3.0),
                                    color: HexColor("ECECF6")),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 90,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    "50.000đ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3.0),
                                    color: HexColor("ECECF6")),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    "100.000đ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3.0),
                                    color: HexColor("ECECF6")),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    "200.000đ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3.0),
                                    color: HexColor("ECECF6")),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 29,
                              ),
                              Container(
                                width: 90,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    "300.000đ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3.0),
                                    color: HexColor("ECECF6")),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    "500.000đ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3.0),
                                    color: HexColor("ECECF6")),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(width: 3.0, color: _mainColor),
                    color: _noColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
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
                      builder: (context) => ConfirmationRecharge(
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
    );
  }
}
