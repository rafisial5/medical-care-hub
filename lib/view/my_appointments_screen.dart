import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_medical_hub/controlller/my_appoitments_screen_controller.dart';

import '../utils/colors.dart';

class MyAppointmentsScreen extends GetView<MyAppointmentsScreenController>{
  const MyAppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlueThemeColor,
        elevation: 0,
        title: Text(
          'M Y  A P P O I N T M E N T S',
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
              myAppointmentCard(doctorName: "Naveed Ahmed", date: "23-01-2023", time: "12:00-1:00", doctorAddress: "Jamshoro"),
              myAppointmentCard(doctorName: "Naveed Ahmed", date: "27-01-2023", time: "2:00-4:00", doctorAddress: "Jamshoro"),
              myAppointmentCard(doctorName: "Uzair Ahmed", date: "05-02-2023", time: "12:00-1:00", doctorAddress: "Hyderabad"),
              myAppointmentCard(doctorName: "Rafi Sial", date: "23-02-2023", time: "3:00-6:00", doctorAddress: "Jamshoro"),
              myAppointmentCard(doctorName: "Naveed Ahmed", date: "25-05-2023", time: "12:00-1:00", doctorAddress: "Jamshoro"),

            ],
          ),
        ),
      ),
    );
  }

  Widget myAppointmentCard({required String doctorName,
    required String date, required String time, required String doctorAddress}) {
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
          rowWidget(titleName: "Date: ", titleValue: date),
          const SizedBox(height: 2,),
          rowWidget(titleName: "Time: ", titleValue: time),
          const SizedBox(height: 2,),
          rowWidget(titleName: "Doctor Address: ", titleValue: doctorAddress),
          const SizedBox(height: 5,),
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