import 'package:get/get.dart';

class RegisterAppointmentScreenController extends GetxController{
  RxString dropDownValue = 'Select Doctor'.obs;

  // List of items in our dropdown menu
  RxList<String> items = [
    'Select Doctor',
    'Naveed Ahmed(Physician)',
    'Siraj Ahmed(Radiologist)',
    'Shahzeb Ali(Neuro Surgeon)',
  ].obs;
}