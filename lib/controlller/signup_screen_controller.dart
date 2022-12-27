import 'package:get/get.dart';

class SignUpScreenController extends GetxController{
  RxString dropDownValue = 'Select'.obs;

  // List of items in our dropdown menu
  RxList<String> items = [
    'Select',
    'Doctor',
    'Patient',
  ].obs;
}