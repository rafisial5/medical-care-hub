import 'package:get/get.dart';
import 'package:virtual_medical_hub/utils/constants.dart';

class DashboardScreenController extends GetxController{


  void onTapMenuItem (String title){
    if(title == "All\nDoctors"){
      Get.toNamed(kAllDoctorsScreenRoute);
    } else if(title == "Register\nAppointment"){
      Get.toNamed(kRegisterAppointmentScreenRoute);
    } else if(title == "My\nAppointment"){
      Get.toNamed(kMyAppointmentScreenRoute);
    } else if(title == "Keep\nReport"){
      Get.toNamed(kReportKeepingScreenRoute);
    } else if(title == "Upload\nConsultant"){
      Get.toNamed(kUploadYourConsultantScreenRoute);
    } else if(title == "Ambulance"){
      Get.toNamed(kMapScreenRoute);
    }
  }
}