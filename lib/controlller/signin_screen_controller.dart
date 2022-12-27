import 'package:get/get.dart';
import 'package:virtual_medical_hub/utils/constants.dart';

class SignInScreenController extends GetxController{

  void moveToSignUpScreen(){
    Get.toNamed(kSignUpScreenRoute);
  }
  void moveToDashboardScreen(){
    Get.toNamed(kDashboardScreenRoute);
  }
}