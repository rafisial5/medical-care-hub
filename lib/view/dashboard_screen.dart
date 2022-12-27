
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_medical_hub/controlller/dashboard_screen_controller.dart';
import 'package:virtual_medical_hub/utils/colors.dart';

class DashBoardScreen extends GetView<DashboardScreenController>{
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: kBlueThemeColor
              ),
              child: Center(
                child: Icon(Icons.person, size: 120, color: kGreenThemeColor,)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.person, size: 30, color: kGreenThemeColor,),
                      const SizedBox(width: 25,),
                      const Text("Doctor Appointment"),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children:  [
                      Icon(Icons.list_alt_outlined, size: 30, color: kGreenThemeColor,),
                      SizedBox(width: 25,),
                      Text("Record Keeping"),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children:  [
                      Icon(Icons.bloodtype, size: 30, color: kGreenThemeColor,),
                      SizedBox(width: 25,),
                      Text("Blood Donation"),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children:  [
                      Icon(Icons.car_repair, size: 30, color: kGreenThemeColor,),
                      SizedBox(width: 25,),
                      Text("Ambulance Service"),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children:  [
                      Icon(Icons.emergency, size: 30, color: kGreenThemeColor,),
                      SizedBox(width: 25,),
                      Text("Emergency Consultant"),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children:  [
                      Icon(Icons.energy_savings_leaf_rounded, size: 30, color: kGreenThemeColor,),
                      SizedBox(width: 25,),
                      Text("Nutrition"),
                    ],
                  ),

                ],
              ),
            )

          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: kBlueThemeColor,
        elevation: 0,
        title: Text(
          'M E D I C A L  H U B',
          style: TextStyle(
            color: kGreenThemeColor
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Image.asset('assets/images/logoheart.png'),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customCard(title: "Doctor\nAppointment", iconData: Icons.person),
                customCard(title: "Record\nKeeping", iconData: Icons.list_alt_outlined),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customCard(title: "Blood\nDonation", iconData: Icons.bloodtype),
                customCard(title: "Ambulance\nService", iconData: Icons.car_repair),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customCard(title: "Emergency\nConsultant", iconData: Icons.emergency),
                customCard(title: "Research B\nNutrition", iconData: Icons.energy_savings_leaf_rounded),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget customCard ({required String title, required IconData iconData}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kGreenThemeColor
      ),
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: Get.width*0.40,
        width: Get.width*0.5-20,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(iconData, size: 60, color: kBlueThemeColor,),
            const SizedBox(height: 10,),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: kBlueThemeColor
              ),
            )
          ],
        ),
      ),
    );
  }
}