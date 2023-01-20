
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controlller/map_screen_controller.dart';

class MapScreen extends GetView<MapScreenController>{
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: controller.initialCameraPosition,
            onMapCreated: (value){controller.googleMapController = value;},
            //onLongPress: controller.addMarkers,
            markers: controller.ambulanceMarkers.toSet(),
            circles: {controller.accuracyLocationCircle.value,controller.ambulanceRegion.value},
            polylines: controller.polyLines.toSet(),
          ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () async {
            await controller.findNearestAmbulance();
          },child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Container(padding: const EdgeInsets.only(top: 7),decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(20)),height: 34,width: Get.width,child: const Text('Find Nearest Ambulance',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
          ),),
      ),
    );
  }

}