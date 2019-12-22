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

class HistoryExchangedPage extends StatelessWidget {
  final String data;
  final _mainColor = HexColor("44A7DA");
  final _moneyColor = HexColor("EE2E2E");
  final _noColor = Colors.white;
  HistoryExchangedPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _noColor,
      appBar: AppBar(
        title: Text('Lịch sử giao dịch'),
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
                  height: 130,
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
                              "Tài khoản nguồn",
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
                      SizedBox(height: 3),
                      Container(
                        width: 320,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Số dư khả dụng",
                              style: TextStyle(
                                color: _mainColor,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "100,000 VND",
                              style: TextStyle(
                                color: _moneyColor,
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
                      "Tài khoản thanh toán",
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
            SizedBox(height: 30),
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: 335,
                  height: 380,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        width: 270,
                        height: 40,
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                                borderSide: BorderSide(color: _mainColor, width: 2.0)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                                borderSide: BorderSide(color: _mainColor, width: 0.0)),
                            labelText: "Tìm kiếm...",
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ), // icon is 48px widget.
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 320,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "15:33:22  20/08/2018",
                                  style: TextStyle(
                                    color: _mainColor,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Chuyển khoản cho",
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
                            Row(
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
                                  "20,000 VND",
                                  style: TextStyle(
                                    color: _moneyColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
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
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "15:33:22  20/08/2018",
                                  style: TextStyle(
                                    color: _mainColor,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Chuyển khoản cho",
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
                            Row(
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
                                  "20,000 VND",
                                  style: TextStyle(
                                    color: _moneyColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
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
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "15:33:22  20/08/2018",
                                  style: TextStyle(
                                    color: _mainColor,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Chuyển khoản cho",
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
                            Row(
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
                                  "20,000 VND",
                                  style: TextStyle(
                                    color: _moneyColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
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
                      "Lịch sử giao dịch",
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
            )
          ],
        ),
      ),
    );
  }
}
