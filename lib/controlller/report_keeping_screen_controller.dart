import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_medical_hub/utils/colors.dart';

import '../utils/date_time_manager.dart';

class ReportKeepingScreenController extends GetxController{
  DateTimeManager date = DateTimeManager("From Date", pattern: "yyyy-MM-dd");

  void selectDate(DateTimeManager dateToBePicked) async {
    try {
      final date = await showDatePicker(
        context: Get.context!,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              primaryColor: kBlueThemeColor,
              buttonTheme:  ButtonThemeData(buttonColor: kBlueThemeColor), colorScheme:  ColorScheme.light(primary: kBlueThemeColor).copyWith(secondary: kBlueThemeColor),
            ),
            child: child!,
          );
        },
      );
      if (date!=null) {
        dateToBePicked.validateDate(date: date);
      }
    } catch (e) {}
  }
}