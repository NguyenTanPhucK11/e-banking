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

class AccountSavingPage extends StatelessWidget {
  final String data;
  final _mainColor = HexColor("44A7DA");
  final _moneyColor = HexColor("EE2E2E");
  final _noColor = Colors.white;
  AccountSavingPage({
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
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: 335,
                  height: 480,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        width: 320,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tên tài khoản",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "VU GIA KHIEM",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: HexColor("ECECF6")),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 320,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Số tài khoản",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "18110000028436",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: HexColor("ECECF6")),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 320,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ngày mở",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "01/11/2019 14:02:33",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: HexColor("ECECF6")),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 320,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ngày đáo hạn",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "01/11/2019 14:02:33",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: HexColor("ECECF6")),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 320,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lãi xuất",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "3,000,000 VND",
                              style: TextStyle(
                                color: _moneyColor,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: HexColor("ECECF6")),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 320,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Số tiền gốc",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "100,000,000 VND",
                              style: TextStyle(
                                color: _moneyColor,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: HexColor("ECECF6")),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 320,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tiền thực hưởng",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "3,000,000 VND",
                              style: TextStyle(
                                color: _moneyColor,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: HexColor("ECECF6")),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 320,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tiền lãi cuối kỳ",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "3,000,000 VND",
                              style: TextStyle(
                                color: _moneyColor,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: HexColor("ECECF6")),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(width: 3.0, color: _mainColor),
                    color: _noColor,
                  ),
                ),
                Positioned(
                  top: -12,
                  left: 15,
                  child: Container(
                    child: Text(
                      "Thông tin tài khoản tiết kiệm",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: _mainColor,
                        fontSize: 20,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 3.0, color: _mainColor),
                      borderRadius: BorderRadius.circular(8.0),
                      color: _noColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
