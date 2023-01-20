import 'package:get/get.dart';
import 'package:virtual_medical_hub/controlller/dashboard_screen_controller.dart';
import 'package:virtual_medical_hub/controlller/my_appoitments_screen_controller.dart';
import 'package:virtual_medical_hub/controlller/register_appiontment_screen_controller.dart';
import 'package:virtual_medical_hub/controlller/signin_screen_controller.dart';
import 'package:virtual_medical_hub/controlller/signup_screen_controller.dart';

import '../controlller/all_doctors_screen_controller.dart';

class ScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() =>   SignInScreenController());
    Get.lazyPut(() =>   SignUpScreenController());
    Get.lazyPut(() =>   DashboardScreenController());
    Get.lazyPut(() =>   AllDoctorsScreenController());
    Get.lazyPut(() =>   RegisterAppointmentScreenController());
    Get.lazyPut(() =>   MyAppointmentsScreenController());
  }

}