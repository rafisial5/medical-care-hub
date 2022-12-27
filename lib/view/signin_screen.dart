import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_medical_hub/utils/colors.dart';

import '../controlller/signin_screen_controller.dart';


class SignInScreen extends GetView<SignInScreenController>{
  const SignInScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logoheart.png'),
                const SizedBox(height: 60,),
                editTextField(),
                const SizedBox(height: 20,),
                passTextField(),
                const SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    controller.moveToSignUpScreen();
                  },
                  child:  Align(
                      alignment: Alignment.topRight,
                      child: Text("Don't have an account? Create", style: TextStyle(color: kBlueThemeColor),)),
                ),
                const SizedBox(height: 30,),
                loginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget editTextField (){
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
            prefixIcon: const Icon(Icons.person),
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: "Please enter user name",
            fillColor: Colors.white70),
        )
    );
  }

  Widget passTextField (){
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
            prefixIcon: const Icon(Icons.key),
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: "Please enter password",
            fillColor: Colors.white70),
        obscureText: true,
        )
    );
  }

  Widget loginButton (){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(500, 50),
        backgroundColor: kGreenThemeColor
      ),
      onPressed: (){
        controller.moveToDashboardScreen();
      },
      child: const Text(
        'Login',
          style: TextStyle(
            fontSize: 18
      ),
      ),
    );
  }

}