import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:virtual_medical_hub/controlller/doctor_dashboard_screen_controller.dart';
import 'package:virtual_medical_hub/utils/colors.dart';

class DoctorDashboardScreen extends GetView<DoctorDashboardScreenController>{
  const DoctorDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Doctor Appointment",
          style: TextStyle(
            color: kGreenThemeColor
          ),
        ),
      ),
    );
  }

}