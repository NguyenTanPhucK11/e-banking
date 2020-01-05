import 'package:flutter/material.dart';
import 'package:e_banking/home.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

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

class FirstPage extends StatelessWidget {
  final _mainColor = HexColor("44A7DA");
  final _noColor = Colors.white;
  final _blackColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _mainColor,
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: SingleChildScrollView(
        child : Center(
        child : Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 60.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('NAVI',
                    style: TextStyle(
                      fontFamily: 'Righteous',
                      fontSize: 65,
                      fontWeight: FontWeight.bold,
                      color: _noColor,
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
            Container(
              width: 300,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.black)),
                  labelText: "Số điện thoại",
                  labelStyle: new TextStyle(color: _noColor, fontSize: 16.0),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(
                      Icons.account_circle,
                      color: _noColor,
                    ), // icon is 48px widget.
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            Container(
              width: 300,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.black)),
                  labelText: "Mật khẩu",
                  focusColor: _noColor,
                  labelStyle: new TextStyle(color: _noColor, fontSize: 16.0),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(
                      Icons.vpn_key,
                      color: _noColor,
                    ), // icon is 48px widget.
                  ),
                ),
              ),
            ),
           Padding(padding: EdgeInsets.all(20.0),), 
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.0625,
              child: RaisedButton(
                child: Text(
                  'Đăng nhập',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: _mainColor),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          HomePage(data: 'Hello there from the first page!'),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                color: _noColor,
                elevation: 20.0,
              ),
            ),
            
            Padding(padding: EdgeInsets.all(20.0),), 
            Image.asset('img/UnLockk.png',height: 120,width: 120),
          ],
        ),
      ),
      ),
    );
  }
}
