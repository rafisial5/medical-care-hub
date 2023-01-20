import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_medical_hub/controlller/all_doctors_screen_controller.dart';

import '../utils/colors.dart';

class AllDoctorsScreen extends GetView<AllDoctorsScreenController>{
  const AllDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlueThemeColor,
        elevation: 0,
        title: Text(
          'A L L  D O C T O R S',
          style: TextStyle(
              color: kGreenThemeColor
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              allDoctorsCard(doctorName: "Naveed Ahmed", doctorEducation: "MBBS", doctorSpeciality: "Physician", doctorAddress: "jamshoro"),
              allDoctorsCard(doctorName: "Uzair Ahmed", doctorEducation: "MBBS", doctorSpeciality: "Physician", doctorAddress: "jamshoro"),
              allDoctorsCard(doctorName: "Abdul Salam", doctorEducation: "MBBS", doctorSpeciality: "Physician", doctorAddress: "jamshoro"),
              allDoctorsCard(doctorName: "Muhammad Rafi", doctorEducation: "MBBS", doctorSpeciality: "Physician", doctorAddress: "jamshoro"),
              allDoctorsCard(doctorName: "Zohaib Ilahi", doctorEducation: "MBBS", doctorSpeciality: "Physician", doctorAddress: "jamshoro"),
            ],
          ),
        ),
      ),
    );
  }

  Widget allDoctorsCard({required String doctorName,
  required String doctorEducation, required String doctorSpeciality, required String doctorAddress}) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color:  kBlueGreyColor.withAlpha(20),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10,),
          Image.asset('assets/images/logoheart.png'),
          const SizedBox(height: 10,),
          rowWidget(titleName: "Doctor Name: ", titleValue: doctorName),
          const SizedBox(height: 2,),
          rowWidget(titleName: "Doctor Education: ", titleValue: doctorEducation),
          const SizedBox(height: 2,),
          rowWidget(titleName: "Doctor Speciality: ", titleValue: doctorSpeciality),
          const SizedBox(height: 2,),
          rowWidget(titleName: "Doctor Address: ", titleValue: doctorAddress),
          const SizedBox(height: 5,),
          ElevatedButton(
              onPressed: () => controller.moveToAppointmentScreen(),
            style: ElevatedButton.styleFrom(
              backgroundColor: kBlueThemeColor,
            ),
              child: const Text("Get Appointment"),)
        ],
      ),
    );
  }

  Widget rowWidget({required String titleName, required String titleValue,}){

    return Row(
      children:  [
        Expanded(flex: 2, child: Text(titleName, style: const TextStyle( color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold), )),
        Expanded(flex: 2, child: Text(titleValue, style: TextStyle( color: kBlueThemeColor, fontSize: 16, fontWeight: FontWeight.bold), )),
      ],
    );
  }

}