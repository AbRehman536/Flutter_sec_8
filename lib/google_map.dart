import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapDemo extends StatefulWidget {
  const GoogleMapDemo({super.key});

  @override
  State<GoogleMapDemo> createState() => _GoogleMapDemoState();
}

class _GoogleMapDemoState extends State<GoogleMapDemo> {
  final Completer<GoogleMapController> _controller = 
      Completer<GoogleMapController>();
  
  Set<Marker> markerSet = {
    Marker(
        markerId: MarkerId("1"),
      position: LatLng(31.5204, 74.3587),
      infoWindow: InfoWindow(title:"Lahore"),
    ),
    Marker(
        markerId: MarkerId("2"),
      position: LatLng(33.5848, 73.0658),
      infoWindow: InfoWindow(title:"Rawalpindi"),
    ),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: GoogleMap(
        mapType: MapType.normal,
          zoomGesturesEnabled: true,
          zoomControlsEnabled: true,
          markers: markerSet,
          initialCameraPosition: CameraPosition(
              target: LatLng(33.5848, 73.0658),
            zoom: 14
          ),
          onMapCreated: (GoogleMapController controller){
          _controller.complete(controller);
          },
      ),
    );
  }
}
