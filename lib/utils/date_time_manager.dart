import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DateTimeManager {

  DateTime? dateTime;
  String fieldName;
  RxString formattedDateTime = "".obs;
  RxString errorMessage=''.obs;
  String pattern;

  DateTimeManager(this.fieldName, {this.pattern='dd/MM/yyyy'});

  bool validateDate({DateTime? date}){
    if(date!=null) {
      dateTime = date;
    }
    if (dateTime != null && !(dateTime.isBlank!)) {
      formattedDateTime.value = DateFormat(pattern).format(dateTime!);
      errorMessage.value = "";
    } else {
      dateTime = null;
      formattedDateTime.value = "";
      errorMessage.value = "$fieldName is required!";
    }
    return errorMessage.isEmpty;
  }

  bool validateTime({TimeOfDay? time}){
    if(time!=null){
      DateTime now = DateTime.now();
      dateTime  = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    }

    if (dateTime != null && !(dateTime.isBlank!)) {
      format();
      errorMessage.value = "";
    } else {
      dateTime = null;
      formattedDateTime.value = "";
      errorMessage.value = "$fieldName is required!";
    }
    return errorMessage.isEmpty;
  }

  String getFormattedDateTime({String? pattern}){
    if(dateTime!=null && !dateTime.isBlank!) {
      return DateFormat(pattern??this.pattern).format(dateTime!);
    } else {
      return formattedDateTime.value;
    }
  }

  void parseDate(String formattedString){
    dateTime = DateTime.tryParse(formattedString);
    format();
  }

  void parseTime(String formattedString){
    dateTime = DateTime.tryParse("0000-00-00 $formattedString");
    format();
  }

  void format(){
    if(dateTime!=null) formattedDateTime.value = DateFormat(pattern).format(dateTime!);
  }

  void clear(){
    dateTime=null;
    formattedDateTime.value = "";
    errorMessage.value='';
  }
}