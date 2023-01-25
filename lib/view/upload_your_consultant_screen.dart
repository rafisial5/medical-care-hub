import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_medical_hub/controlller/upload_your_consultant_screen_controller.dart';

import '../utils/colors.dart';

class UploadYourConsultantScreen extends GetView<UploadYourConsultantScreenController>{
  const UploadYourConsultantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlueThemeColor,
        elevation: 0,
        title: Text(
          'UPLOAD YOUR CONSULTANT',
          style: TextStyle(
              color: kGreenThemeColor
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 24,),
            editTextField(hint: "Doctor Name"),
            const SizedBox(height: 14,),
            editTextField(hint: "Diagnostic"),
            const SizedBox(height: 14,),
            editTextField(hint: "Treatment"),
            const SizedBox(height: 14,),
            editTextField(hint: "Blood Pressure"),
            const SizedBox(height: 14,),
            editTextField(hint: "Weight"),
            const SizedBox(height: 14,),
            Obx(() => dateWidget()),
            const SizedBox(height: 24,),
            submitButton (),
          ],
        ),
      ),
    );
  }

  Widget dateWidget(){
    return SizedBox(
      height: 70,
      child: Card(
        // margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 2,
        color: Colors.grey.shade400,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 25.0, right: 3.0, bottom: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Date Record",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: ""),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      "${controller.date.formattedDateTime}",
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.values[6]),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: datePicker(function: () {
                controller.selectDate(controller.date);
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget submitButton (){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(500, 50),
          backgroundColor: kGreenThemeColor
      ),
      onPressed: (){},
      child: const Text(
        'Submit',
        style: TextStyle(
            fontSize: 18
        ),
      ),
    );
  }

  Widget datePicker({required Function function}) {
    return GestureDetector(
      onTap:() =>function(),
      child: Container(
        alignment: Alignment.topRight,
        padding: const EdgeInsets.only(right: 15.0,top: 0),
        width: 28.0,
        height: 28.0,
        child: const Image(
          image: AssetImage('assets/images/calendar.png', ),
        ),
      ),
    );
  }

  Widget editTextField ({required String hint}){
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(10)
        ),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none
              ),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[800]),
              hintText: hint,
              fillColor: Colors.white70),
        )
    );
  }
}