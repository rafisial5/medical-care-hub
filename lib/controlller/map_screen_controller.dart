

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui' as ui;

class MapScreenController extends GetxController{
  late GoogleMapController googleMapController;
  Rx<Marker> marker = const Marker(markerId: MarkerId("current location")).obs;
  List<Marker> ambulanceMarkers = [];
  Rx<Circle> accuracyLocationCircle = const Circle(circleId: CircleId('Region'),).obs;
  Rx<Circle> ambulanceRegion = const Circle(circleId: CircleId('Ambulance Region'),).obs;
  RxList<Polyline> polyLines = <Polyline>[].obs;
  CameraPosition initialCameraPosition = const CameraPosition(target: LatLng(33.985805 , -118.2541117), zoom: 19);
  late BitmapDescriptor ambulanceMarkerIcon;
  String googleAPiKey = "GOOGLE MAP API KEY";
  List<LatLng> nearbyAmbulances = [
    const LatLng(25.419007, 68.259210),
    const LatLng(25.418721, 68.259042),
    const LatLng(25.417308, 68.260968),
    const LatLng(25.410482, 68.270221),
    const LatLng(25.413486, 68.269545),
    const LatLng(25.407862, 68.266998),
    const LatLng(25.406006, 68.263838),
    const LatLng(25.405173, 68.260072),
    const LatLng(25.407140, 68.257283),
    const LatLng(25.409175, 68.258721),
    const LatLng(25.411733, 68.258657),
    const LatLng(25.409901, 68.265234),
    const LatLng(25.409901, 68.265234),
  ];

  Future<Position> getLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    Position currentLocation = await Geolocator.getCurrentPosition();
    googleMapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(25.4098160, currentLocation.longitude),
            zoom: 15,
            tilt: 2)));
    accuracyLocationCircle.value = Circle(
        circleId: const CircleId('Region'),
        center: LatLng(currentLocation.latitude, currentLocation.longitude),
        radius: 20,
        fillColor: Colors.blue.withOpacity(0.5),
        strokeColor: Colors.blue.withOpacity(0)
    );
    marker.value = Marker(
      infoWindow: const InfoWindow(title:'My Current Location'),
      markerId: const MarkerId("current location"),
      position: LatLng(currentLocation.latitude, currentLocation.longitude),);
    return currentLocation;
  }

  @override
  Future<void> onInit() async {
    Uint8List bytes = await getBytesFromAsset();
    ambulanceMarkerIcon = BitmapDescriptor.fromBytes(bytes);
    Position currentLocation = await getLocation();
    for(int i=0;i<nearbyAmbulances.length;i++){
      ambulanceMarkers.add(Marker(markerId: MarkerId('Ambulance $i'),
          position: nearbyAmbulances[i],
          //anchor: Offset(0,1),
          icon: ambulanceMarkerIcon,
          infoWindow: InfoWindow(title: 'Ambulance $i')),);
    }
    ambulanceMarkers.add(marker.value);

    super.onInit();
  }

  Future<Uint8List> getBytesFromAsset() async {
    ByteData data = await rootBundle.load('assets/images/ambulance.png');
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: 100);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
  }

  Future<void> findNearestAmbulance() async {
    Position currentLocation = await Geolocator.getCurrentPosition();
    double shortestDistance = 2000;
    Map<LatLng,double> nearestAmbulance = {};
    for(int i=0;i<nearbyAmbulances.length;i++){
      double distance = Geolocator.distanceBetween(currentLocation.latitude, currentLocation.longitude, nearbyAmbulances[i].latitude, nearbyAmbulances[i].longitude);
      if(distance<shortestDistance){
        shortestDistance = distance;
        nearestAmbulance = {};
        nearestAmbulance = {nearbyAmbulances[i]:shortestDistance};
      }
    }
    polyLines.add(Polyline(
      polylineId: const PolylineId('Nearest Ambulance'),
      width: 3,
      points: [LatLng(currentLocation.latitude, currentLocation.longitude),nearestAmbulance.keys.first],
      color: Colors.deepOrange,
    ));

    ambulanceRegion.value = Circle(circleId: const CircleId('Ambulance Region',),
        center: LatLng(nearestAmbulance.keys.first.latitude, nearestAmbulance.keys.first.longitude),
    radius: 20,
    fillColor: Colors.blue.withOpacity(0.5),
    strokeColor: Colors.blue.withOpacity(0));
    googleMapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(nearestAmbulance.keys.first.latitude,nearestAmbulance.keys.first.longitude),zoom: 18)));
    Fluttertoast.showToast(msg: "${nearestAmbulance.values.first.toPrecision(2)}");

    //await getDirections(currentLocation, nearbyAmbulances[nearestAmbulance.keys.first]);
  }

}