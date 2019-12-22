import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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

class FindATMPage extends StatelessWidget {
  // Completer<GoogleMapController> _controller = Completer();

  final String data;
  final noColor = Colors.white;
  FindATMPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: noColor,
      appBar: AppBar(
        title: Text('Tìm kiếm ATM'),
      ),
      body: Stack(children: <Widget>[
         Padding(
                  padding: EdgeInsets.all(30),
                ),
        Image.asset("img/mapATM.png"),
      ]),
    );
  }

  // Widget _googleMap(BuildContext context) {
  //   return Container(
  //     height: MediaQuery.of(context).size.height,
  //     width: MediaQuery.of(context).size.width,
  //     child: GoogleMap(
  //       mapType: MapType.normal,
  //       initialCameraPosition:
  //           CameraPosition(target: LatLng(40.712776, -74.005974), zoom: 12),
  //       onMapCreated: (GoogleMapController controller) {
  //         _controller.complete(controller);
  //       },
  //       markers: {newyork1Marker, newyork2Marker},
  //     ),
  //   );
  // }

  // Marker newyork1Marker = Marker(
  //   markerId: MarkerId('newyork1'),
  //   position: LatLng(40.712776, -74.005974),
  //   infoWindow: InfoWindow(title: 'Los Tacos'),
  //   icon: BitmapDescriptor.defaultMarkerWithHue(
  //     BitmapDescriptor.hueViolet,
  //   ),
  // );

  // Marker newyork2Marker = Marker(
  //   markerId: MarkerId('newyork1'),
  //   position: LatLng(40.712776, -74.005974),
  //   infoWindow: InfoWindow(title: 'Los Tacos'),
  //   icon: BitmapDescriptor.defaultMarkerWithHue(
  //     BitmapDescriptor.hueViolet,
  //   ),
  // );
}
