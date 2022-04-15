import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationView extends StatefulWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  late CameraPosition _initialCameraPosition;
  Completer<GoogleMapController> _controller = Completer();
  late String _darkMapStyle;

  @override
  void initState() {
    super.initState();
    _loadMapStyles();
    _initialCameraPosition = CameraPosition(
        target: LatLng(47.22019391043158, -1.5603798558605178), zoom: 11.5);
  }

  Future _loadMapStyles() async {
    _darkMapStyle = await rootBundle.loadString('assets/map_style.json');
    await _controller.future.then((value) {
      value.setMapStyle(_darkMapStyle);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GoogleMap(
        markers: {
          const Marker(
              markerId: MarkerId("Chez Moi"),
              position: LatLng(47.22019391043158, -1.5603798558605178))
        },
        myLocationButtonEnabled: false,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        initialCameraPosition: _initialCameraPosition,
      )),
    );
  }
}
