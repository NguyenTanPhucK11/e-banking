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

class ConfirmationTransaction extends StatelessWidget {
  final String data;
  final _mainColor = HexColor("44A7DA");
  final _moneyColor = HexColor("EE2E2E");
  final _noColor = Colors.white;
  ConfirmationTransaction({
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
                              "Tên người TH",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "TRAN DUY MINH",
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
                              "Tài khoản TH",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "31410003035831",
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
                              "Đối tượng chịu phí",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Người chuyển",
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
                              "Số tiền",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "100,000 VND",
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
                              "Phí",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "1,000 VND",
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
                              "VAT",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "100 VND",
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
                              "Ngày giao dịch",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "05/11/2019 21:46:25",
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
                              "Nội dung",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "Chuyển tiền",
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
