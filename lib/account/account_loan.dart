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

class AccountLoanPage extends StatelessWidget {
  final String data;
  final _mainColor = HexColor("44A7DA");
  final _moneyColor = HexColor("EE2E2E");
  final _noColor = Colors.white;
  AccountLoanPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _noColor,
      appBar: AppBar(
        title: Text('Tài khoản tiền vay'),
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
                              "Mã giao dịch",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "345892",
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
                              "Thời gian GD",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "01/11/2019 13:33:33",
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
                              "Số tiền GD",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "300,000 VND",
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
                              "Tài khoản ghi nợ/ghi có",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "5212205111111",
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
                      Center(
                        child: Container(
                          width: 320,
                          height: 145,
                          child: Text(
                                "Mô tả",
                                style: TextStyle(
                                  color: _mainColor,
                                  fontSize: 14,
                                ),
                              ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: HexColor("ECECF6")),
                          alignment: Alignment.topCenter,
                        ),
                        
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
                      "Thông tin tài khoản tiền vay",
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
