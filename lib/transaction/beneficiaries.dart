import 'package:e_banking/transaction/comfirmation.dart';
import 'package:flutter/material.dart';
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
class BeneficiariesTransaction extends StatelessWidget {
  final String data;
  final _mainColor = HexColor("44A7DA");
  final _noColor = Colors.white;
  int groupValue;

  BeneficiariesTransaction({
    Key key,
    @required this.data,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _noColor,
      appBar: AppBar(
        title: Text('Chuyển khoản nội bộ'),
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
                  height: 220,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            width: 320,
                            height: 20,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 18.0,
                                ),
                                Icon(
                                  Icons.account_circle,
                                  size: 20,
                                  // color: _mainColor,
                                ),
                                Text(
                                  "Tên tài khoản thụ hưởng",
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
                                  "Tài khoản thụ hưởng",
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
                              textInputAction:
                                  TextInputAction.send, // not number
                              textCapitalization: TextCapitalization.characters,
                              decoration: InputDecoration(
                                  hintText: 'Nhập số tài khoản'),
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
                      "Tài khoản thụ hưởng",
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
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: 335,
                  height: 280,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Column(
                        children: [
                          Container(
                            width: 320,
                            height: 40,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 18.0,
                                ),
                                Icon(
                                  Icons.account_circle,
                                  size: 20,
                                  // color: _mainColor,
                                ),
                                Text(
                                  "Số tiền",
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
                            width: 280,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "100,000",
                                  style: TextStyle(
                                    color: _mainColor,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "VND",
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                                  Icons.account_box,
                                  size: 20,
                                  // color: _mainColor,
                                ),
                                Text(
                                  "Đối tượng chịu phí",
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
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: <Widget>[
                              new Radio(
                                value: 1,
                                groupValue: 1,
                                activeColor: Colors.green,
                                onChanged: (val) {
                                   
                                },
                              ),
                              Text(
                                  "Người chuyển",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                              ),
                              new Radio(
                                value: 1,
                                groupValue: 0,
                                activeColor: Colors.green,
                                onChanged: (val) {
                                  
                                },
                              ),
                              Text(
                                  "Người nhận",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                              ),
                            ],
                          )
                        ],
                      ),
                       Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 320,
                            height: 20,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 20.0,
                                ),
                                Icon(
                                  Icons.content_paste,
                                  size: 20,
                                  // color: _mainColor,
                                ),
                                Text(
                                  "Nội dung giao dịch",
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
                            width: 280,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Chuyển tiền",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                                Radio(
                                value: 1,
                                groupValue: 1,
                                activeColor: Colors.green,
                                onChanged: (val) {
                                  print("Radio $val");
                                },
                              ),
                              ],
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
                      "Tài khoản thụ hưởng",
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
              height: 10,
            ),
            Container(
              width: 250,
              height: 40,
              child: RaisedButton(
                child: Text('Tiếp tục', 
                style: TextStyle(
                  fontSize: 20,            
                  color: _noColor),          
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          ConfirmationTransaction(data: 'Hello there from the first page!'),
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
