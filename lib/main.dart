import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_medical_hub/utils/bindings.dart';
import 'package:virtual_medical_hub/utils/constants.dart';
import 'package:virtual_medical_hub/utils/route_management.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: kSignInScreenRoute,
    debugShowCheckedModeBanner: false,
    initialBinding: ScreenBindings(),
    getPages: RouteManagement.getPages(),


  ));
}

