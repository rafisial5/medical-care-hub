import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_medical_hub/controlller/signup_screen_controller.dart';
import 'package:virtual_medical_hub/utils/colors.dart';

class SignUpScreen extends GetView<SignUpScreenController>{
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     appBar: AppBar(
       title:  Text(
           'S I G N U P',
         style: TextStyle(
           color: kGreenThemeColor
       ),
       ),
       backgroundColor: kBlueThemeColor,
       centerTitle: true,
       elevation: 0,
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
               editTextField("Please enter user name", Icons.person),
               const SizedBox(height: 20,),
               editTextField("Please enter password", Icons.key, obsecure: true),
               const SizedBox(height: 20,),
               editTextField("Please enter email address", Icons.email),
               const SizedBox(height: 20,),
               Obx(() => dropDownCustom()),
               const SizedBox(height: 20,),
               signUpButton()
             ],
           ),
         ),
       ),
     ),
   );
  }
  Widget editTextField (String title, IconData iconData, {bool obsecure = false}){
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(10)
        ),
        child: TextField(
          obscureText: obsecure,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none
              ),
              filled: true,
              prefixIcon:  Icon(iconData),
              hintStyle: TextStyle(color: Colors.grey[800]),
              hintText: title,
              fillColor: Colors.white70),
        )
    );
  }

  Widget signUpButton (){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(500, 50),
          backgroundColor: kGreenThemeColor,
      ),
      onPressed: (){},
      child: const Text(
        'SignUp',
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