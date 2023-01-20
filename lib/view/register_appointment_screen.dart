import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:virtual_medical_hub/controlller/register_appiontment_screen_controller.dart';

import '../utils/colors.dart';

class RegisterAppointmentScreen extends GetView<RegisterAppointmentScreenController>{
  const RegisterAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlueThemeColor,
        elevation: 0,
        title: Text(
          'REGISTER APPOINTMENT',
          style: TextStyle(
              color: kGreenThemeColor
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(height: 50,),
                Image.asset('assets/images/logoheart.png'),
                const SizedBox(height: 50,),
                Obx(() => dropDownCustom()),
                const SizedBox(height: 20,),
                textValue("fees:", "1000"),
                const SizedBox(height: 20,),
                textValue("Start Time:", "14:00"),
                const SizedBox(height: 20,),
                textValue("End Time:", "18:00"),
                const SizedBox(height: 20,),
                textValue("Average Time:", "30 mints"),
                const SizedBox(height: 20,),
                textValue("Date:", "22-02-2023"),
                const SizedBox(height: 20,),
                bookAppointmentButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textValue (String title,String value){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            Expanded(flex: 2,child: Text(title)),
            Expanded(flex: 3,child: Text(value)),
          ],
        )
    );
  }

  Widget bookAppointmentButton (){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(500, 50),
        backgroundColor: kBlueThemeColor,
      ),
      onPressed: (){},
      child: const Text(
        'Book Appointment',
        style: TextStyle(
            fontSize: 18
        ),
      ),
    );
  }

  Widget dropDownCustom (){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: Get.width,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200
      ),
      child:  DropdownButton(
        value: controller.dropDownValue.value,
        isExpanded: true,
        icon: const Icon(Icons.keyboard_arrow_down),
        underline: const SizedBox(),
        items: controller.items.value.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        onChanged: (String? newValue) {
          controller.dropDownValue.value = newValue!;
        },
      ),
    );
  }

}