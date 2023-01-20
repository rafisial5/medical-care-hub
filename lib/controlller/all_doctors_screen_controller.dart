import 'package:get/get.dart';
import 'package:virtual_medical_hub/utils/constants.dart';

class AllDoctorsScreenController extends GetxController{
  void moveToAppointmentScreen(){
    Get.offAndToNamed(kRegisterAppointmentScreenRoute);
  }
}