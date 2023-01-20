
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
        child: Container(
          color:  kBlueGreyColor.withAlpha(20),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Image.asset('assets/images/logoheart.png'),
              const SizedBox(height: 20,),
              _headingWidget("Doctor Appointment"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      _buildGuidelineCard(title: "All\nDoctors", iconData:  Icons.recent_actors),
                      _buildGuidelineCard(title: "Register\nAppointment", iconData:  Icons.app_registration),
                      _buildGuidelineCard(title: "My\nAppointment", iconData:  Icons.receipt),
                    ],
                  ),
                ),
              ),
             const SizedBox(height: 12,),
             const Divider(thickness: 1,),

              const SizedBox(height: 20,),
              _headingWidget("Record Keeping"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      _buildGuidelineCard(title: "Keep\nReport", iconData:  Icons.featured_play_list_outlined),
                      _buildGuidelineCard(title: "Check\nReport", iconData:  Icons.playlist_add_check_circle_outlined),
                      _buildGuidelineCard(title: "Upload\nConsultant", iconData:  Icons.upload_file),
                      _buildGuidelineCard(title: "Check\nConsultant", iconData:  Icons.playlist_add_check),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              const Divider(thickness: 1,),

              const SizedBox(height: 20,),
              _headingWidget("Blood Donation"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      _buildGuidelineCard(title: "Donate\nBlood", iconData:  Icons.bloodtype),
                      _buildGuidelineCard(title: "Donation\nHistory", iconData:  Icons.history_outlined),
                      _buildGuidelineCard(title: "Blood\nRequest", iconData:  Icons.bloodtype_outlined),
                      _buildGuidelineCard(title: "Request\nHistory", iconData:  Icons.history_edu),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              const Divider(thickness: 1,),

              const SizedBox(height: 20,),
              _headingWidget("Ambulance Service"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      _buildGuidelineCard(title: "All\nDoctors", iconData:  Icons.recent_actors),
                      _buildGuidelineCard(title: "Register\nAppointment", iconData:  Icons.app_registration),
                      _buildGuidelineCard(title: "My\nAppointment", iconData:  Icons.receipt),
                      _buildGuidelineCard(title: "My\nAppointment", iconData:  Icons.receipt),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              const Divider(thickness: 1,),


              const SizedBox(height: 20,),
              _headingWidget("Emergency Consultant"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      _buildGuidelineCard(title: "All\nDoctors", iconData:  Icons.recent_actors),
                      _buildGuidelineCard(title: "Register\nAppointment", iconData:  Icons.app_registration),
                      _buildGuidelineCard(title: "My\nAppointment", iconData:  Icons.receipt),
                      _buildGuidelineCard(title: "My\nAppointment", iconData:  Icons.receipt),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              const Divider(thickness: 1,),

              const SizedBox(height: 20,),
              _headingWidget("Research B Nutrition"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    
                    children: [
                      _buildGuidelineCard(title: "General\nTables", iconData:  Icons.table_view),
                      _buildGuidelineCard(title: "Data\nTables", iconData:  Icons.backup_table),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              const Divider(thickness: 1,),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGuidelineCard({required String title, required IconData iconData}){
    return SizedBox(
      width: Get.width*0.33,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => controller.onTapMenuItem(title),
            child: Container(
              height: Get.width*0.25,
              width: Get.width*0.25,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Icon(iconData,size: 50, color: kBlueThemeColor,),
            ),
          ),
          Padding(
            padding:const EdgeInsets.only(left: 16),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,),
            ),
          )
        ],
      ),
    );
  }

  Widget _headingWidget(String heading){
    return Padding(
      padding: const EdgeInsets.only(top: 30.0,bottom: 8, left: 20),
      child: Row(
        children: [
          Icon(Icons.dashboard_rounded, color: kBlueThemeColor),
          const SizedBox(width: 8,),
          Text(
            heading,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

}